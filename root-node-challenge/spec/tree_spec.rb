require 'tree'

describe Tree do
  it '>Returns 1 if the value is present in the tree' do
    RANDOM_NUMBER = rand(100)
    tree = Tree.build_tree([2,3,4,RANDOM_NUMBER,5,1,6])

    expect(searchTree(tree.root, RANDOM_NUMBER)).to eq(1)
  end
end
