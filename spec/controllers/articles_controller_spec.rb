describe ArticlesController do
  describe '#index' do
    let(:articles) { double }

    before do
      expect(Article).to receive(:all).and_return(articles)

      get :index
    end

    it do
      expect(assigns(:articles)).to eq articles
      expect(response).to be_successful
    end
  end

  describe '#show' do
    before do
      get :index
    end

    it do
      expect(response).to be_successful
    end
  end
end
