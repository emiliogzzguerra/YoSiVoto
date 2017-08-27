import { SupPage } from './app.po';

describe('sup App', function() {
  let page: SupPage;

  beforeEach(() => {
    page = new SupPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
