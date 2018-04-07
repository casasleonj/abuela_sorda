require 'sinatra'

get '/' do 
	erb :index
end

post '/habla' do
	@habla = params[:algo] 
if @habla == "" || @habla == nil
		raise ArgumentError.new("No puede ser vacio")
	elsif @habla == @habla.upcase 
	"<h1>Ahhh si, manzanas!</h1>"
else
	"<h1>Habla más duro mijito</h1>"
end
end
