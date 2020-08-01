import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MediaService {
  Future<PickedFile> getImage({bool fromGallery}) {
    return ImagePicker().getImage(source: fromGallery ? ImageSource.gallery : ImageSource.camera);
  }
}
