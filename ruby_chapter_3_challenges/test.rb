class Test
    def initialize
        @arr = []
    end
    def test(service, password)
        stringArray = @arr.to_s
        if @arr.find {|e| /#{service}/ =~ e} == nil && (password.length > 7 && password =~ /[&%!@$]/)
            @arr << "#{service}, #{password}"
            return @arr
        else
            "NOOOO"
        end
    end 
end

