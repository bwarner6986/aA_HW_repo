class Map
    def initialize 
        this_map = []

    def set(key, value)
        sub_index = this_map.index { |sub_ele_pair| sub_ele_pair[0] == key }
        if sub_index
            #change 'value' of element pair if first ele already exists
            this_map[sub_ele_pair][1] = value
        else
            #else add pair of elements to array as pair in a subarray
            this_map.push([key, value])
        end
        value
    end
    
    def get(key)
        this_map.each { |pair_in_map| return pair_in_map[1] if pair_in_map[0] == key }
        #nil
    end

    def delete(key)
        value = get(key)
        this_map.reject! { |pair_in_map| pair_in_map[0] == key }
        value
    end

    def show
        deep_dup(this_map)
    end

    private
    attr_reader :this_map

    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }

    end
end