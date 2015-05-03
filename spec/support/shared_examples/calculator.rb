shared_examples 'has add method' do
  it do
    expect(subject.respond_to?(:add)).to be true
  end
end

shared_examples 'has mal method' do
  it do
    expect(subject.respond_to?(:mal)).to be true
  end
end

shared_examples 'calculator' do
  it_behaves_like 'has add method'
  it_behaves_like 'has mal method'
end
