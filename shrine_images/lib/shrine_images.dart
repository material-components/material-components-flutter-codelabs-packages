// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


import 'dart:io';

class ShrineImages {
  List<String> get imageNames => List<String>.unmodifiable(_imageNames);

  ShrineImage operator [](String name) {
    if (!_imageNames.contains(name)) {
      throw Exception('Unknown image "$name"');
    }

    return ShrineImage._(
      name,
      File('$name'),
      File('2.0x/$name'),
      File('3.0x/$name'),
    );
  }
}

class ShrineImage {
  ShrineImage._(this.filename, this.image1x, this.image2x, this.image3x);
  final String filename;
  final File image1x;
  final File image2x;
  final File image3x;
}

const List<String> _imageNames = [
  '0-0.jpg',
  '1-0.jpg',
  '2-0.jpg',
  '3-0.jpg',
  '4-0.jpg',
  '5-0.jpg',
  '6-0.jpg',
  '7-0.jpg',
  '8-0.jpg',
  '9-0.jpg',
  '10-0.jpg',
  '11-0.jpg',
  '12-0.jpg',
  '13-0.jpg',
  '14-0.jpg',
  '15-0.jpg',
  '16-0.jpg',
  '17-0.jpg',
  '18-0.jpg',
  '19-0.jpg',
  '20-0.jpg',
  '21-0.jpg',
  '22-0.jpg',
  '23-0.jpg',
  '24-0.jpg',
  '25-0.jpg',
  '26-0.jpg',
  '27-0.jpg',
  '28-0.jpg',
  '29-0.jpg',
  '30-0.jpg',
  '31-0.jpg',
  '32-0.jpg',
  '33-0.jpg',
  '34-0.jpg',
  '35-0.jpg',
  '36-0.jpg',
  '37-0.jpg',
];
