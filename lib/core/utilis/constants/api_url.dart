abstract class AppApiUrl {
  static const _server = 'https://www.googleapis.com/books/v1/';

  static const fetchNewestBooks =
      '${_server}volumes?Filtering=free-ebooks&q=Programming&Sorting=newest';

  static const fetchFeaturedBooks =
      '${_server}volumes?Filtering=free-ebooks&q=Programming';
}
