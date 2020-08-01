import 'package:flutter/material.dart';
import 'package:flutterapp/app/locator.dart';
import 'package:flutterapp/services/media_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class ImagePickerViewModel extends BaseViewModel {
  final _mediaService = locator<MediaService>();

  PickedFile _selectedImage;

  bool get hasSelectedImage => _selectedImage != null;

  PickedFile get selectedImage => _selectedImage;

  Future selectImage({@required bool fromGallery}) async {
    _selectedImage =
        await runBusyFuture(_mediaService.getImage(fromGallery: fromGallery));
  }
}
