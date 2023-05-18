class Yemek {
  final String _yemekAdi;
  final String _yemekKaloriDegeri;
  final String _yemekIcindekiler;
  final String _yemekTarifi;
  final String _yemekFoto;

  get yemekAdi => this._yemekAdi;
  get yemekKaloriDegeri => this._yemekKaloriDegeri;
  get yemekIcindekiler => this._yemekIcindekiler;
  get yemekTarifi => this._yemekTarifi;
  get yemekFoto => this._yemekFoto;

  Yemek(this._yemekAdi, this._yemekKaloriDegeri, this._yemekIcindekiler,
      this._yemekTarifi, this._yemekFoto);
}
