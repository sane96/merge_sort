require_relative '../lib/main'


    describe '#merge_sort' do
        it "Passed unsorted arr without negative numbers" do
            expect(merge_sort([4, 5, 2, 11, 26, 9, 3])).to eql([2,3,4,5,9,11,26]) 
        end

        it "Passed sorted arr without negative numbers" do       
            expect(merge_sort([2,3,4,5,9,11,26])).to eql([2,3,4,5,9,11,26])
        end

        it "Passed unsorted arr with negative numbers" do       
            expect(merge_sort([4, -5, -2, 11, 26, 9, 3])).to eql([-5,-2,3,4,9,11,26])
        end

        it "Passed sorted arr with negative numbers" do       
            expect(merge_sort([-5,-2,3,4,9,11,26])).to eql([-5,-2,3,4,9,11,26])
        end
    end
