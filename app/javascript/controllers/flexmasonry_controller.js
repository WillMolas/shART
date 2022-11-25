import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flexmasonry"
export default class extends Controller {
  connect() {
    FlexMasonry.init('.grid', {
      responsive: false,
      numCols: 4
  })
  }
}
