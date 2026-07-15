class Student {
  final String name;
  final bool isPresent;

  Student({required this.name, required this.isPresent});

  Student copyWith({String? name, bool? isPresent}) {
    return Student(
      name: name ?? this.name,
      isPresent: isPresent ?? this.isPresent,
    );
  }
}
