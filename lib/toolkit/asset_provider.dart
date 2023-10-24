abstract class AssetProvider {
  String getBasePath();
  String getPathByName(String name);
}

class ImageAssetProvider extends AssetProvider {
  @override
  String getBasePath() {
    return 'assets/images/';
  }

  @override
  String getPathByName(String name) {
    return '${getBasePath()}$name.png';
  }

  String getImageByName(String name) {
    return getPathByName(name);
  }

  String getAppLogo() {
    return '${getBasePath()}logo.png';
  }

  String getShortsLogo() {
    return '${getBasePath()}logo_shorts.png';
  }

  String getChannelAvatar(int index) {
    return '${getBasePath()}channel$index.png';
  }

  String getPostThumbnail(int index) {
    return '${getBasePath()}post$index.png';
  }

  String getShortThumbnail(int index) {
    return '${getBasePath()}shorts$index.png';
  }
}

class VectorAssetProvider extends AssetProvider {
  @override
  String getBasePath() {
    return 'assets/vectors/';
  }

  @override
  String getPathByName(String name) {
    print('${getBasePath()}$name.svg');
    return '${getBasePath()}$name.svg';
  }

  String getAppLogo() {
    return '${getBasePath()}logo.svg';
  }

  String getVectorByName(String name) {
    return getPathByName(name);
  }
}