class Contact {
  String _Name;
  String _Number;
  Contact(
    this._Name,
    this._Number,
  );

  String get Name => _Name;
  set Name(String Name) {
    _Name = Name;
  }

  String get Number => _Number;
  set Number(String Number) {
    _Number = Number;
  }
}
