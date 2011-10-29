module EventMachine::Udns

  class Resolver
    def initialize
      raise UdnsError, @alloc_error if @alloc_error
      @queries = {}
      dns_open
    end

    def callback &block
      @on_success_block = block
    end

    def errback &block
      @on_error_block = block
    end


    private
    
    def set_timer(timeout)
      @timer = EM::Timer.new(timeout) { timeouts }
    end
    
    def do_success result
      @on_success_block && @on_success_block.call(result)
    end

    def do_error error
      @on_error_block && @on_error_block.call(error)
    end
  end

end