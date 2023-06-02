import { Controller } from "@hotwired/stimulus";
import mapboxgl from 'mapbox-gl';
// import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    console.log('testing');

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/wisbeach/clid86jxk002e01pgdte5fzxh"
    });

    this.map.addControl(
      new MapboxGeocoder({
        accessToken: mapboxgl.accessToken,
        mapboxgl: mapboxgl
      })
    );

    this.addMarkersToMap();
    this.fitMapToMarkers();
  }

  addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html);

      const customMarker = document.createElement("div");
      customMarker.innerHTML = marker.marker_html;

      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);
    });
  }

  fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach((marker) =>
      bounds.extend([marker.lng, marker.lat])
    );
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }
}