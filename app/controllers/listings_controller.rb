class ListingsController < ApplicationController
  def new
  	@makers = Maker.all.order(:name) || []
  	@listing = Listing.create
  	@cities = ["Abbottabad","Adezai","Ali Bandar","Amir Chah","Attock","Ayubia","Bahawalpur","Baden",
  		"Bagh","Bahawalnagar","Burewala","Banda Daud Shah","Bannu district|Bannu","Batagram","Bazdar",
  		"Bela","Bellpat","Bhag","Bhakkar","Bhalwal","Bhimber","Birote","Buner","Burj","Chiniot","Chachro",
  		"Chagai","Chah Sandan","Chailianwala","Chakdara","Chakku","Chakwal","Chaman","Charsadda","Chhatr",
  		"Chichawatni","Chitral","Chunain","Dadu","Dera Ghazi Khan","Dera Ismail Khan", "Dalbandin","Dargai","Darya Khan",
  		"Daska","Dera Bugti","Dhana Sar","Digri","Dina City|Dina","Dinga",",Pakistan|Diplo","Diwana","Dokri","Drosh",
  		"Duki","Dushi","Duzab","Faisalabad","Fateh Jang","Ghotki","Gwadar","Gujranwala","Gujrat","Gadra","Gajar",
  		"Gandava","Garhi Khairo","Garruck","Ghakhar Mandi","Ghanian","Ghauspur","Ghazluna","Girdan","Gulistan","Gwash",
  		"Hyderabad","Hala","Haripur","Hab Chauki","Hafizabad","Hameedabad","Hangu","Harnai","Hasilpur","Haveli Lakha",
  		"Hinglaj","Hoshab","Islamabad","Islamkot","Ispikan","Jacobabad","Jamshoro","Jhang","Jhelum","Jamesabad","Jampur",
  		"Janghar","Jati(Mughalbhin)","Jauharabad","Jhal","Jhal Jhao","Jhatpat","Jhudo","Jiwani","Jungshahi","Karachi",
  		"Kotri","Kalam","Kalandi","Kalat","Kamalia","Kamararod","Kamber","Kamokey","Kanak","Kandi","Kandiaro","Kanpur",
  		"Kapip","Kappar","Karak City","Karodi","Kashmor","Kasur","Katuri","Keti Bandar","Khairpur","Khanaspur","Khanewal",
  		"Kharan","kharian","Khokhropur","Khora","Khushab","Khuzdar","Kikki","Klupro","Kohan","Kohat","Kohistan","Kohlu",
  		"Korak","Korangi","Kot Sarae","Kotli","Lahore","Larkana","Lahri","Lakki Marwat","Lasbela","Latamber","Layyah",
  		"Leiah","Liari","Lodhran","Loralai","Lower Dir","Shadan Lund","Multan","Mandi Bahauddin","Mansehra","Mian Chanu",
  		"Mirpur","Pakistan|Moro","Mardan","Mach","Madyan","Malakand","Mand","Manguchar","Mashki Chah","Maslti","Mastuj",
  		"Mastung","Mathi","Matiari","Mehar","Mekhtar","Merui","Mianwali","Mianez","Mirpur Batoro","Mirpur Khas",
  		"Mirpur Sakro","Mithi","Mongora","Murgha Kibzai","Muridke","Musa Khel Bazar","Muzaffar Garh","Muzaffarabad",
  		"Nawabshah","Nazimabad","Nowshera","Nagar Parkar","Nagha Kalat","Nal","Naokot","Nasirabad","Nauroz Kalat","Naushara",
  		"Nur Gamma","Nushki","Nuttal","Okara","Ormara","Peshawar","Panjgur","Pasni City","Paharpur","Palantuk","Pendoo",
  		"Piharak","Pirmahal","Pishin","Plandri","Pokran","Pounch","Quetta","Qambar","Qamruddin Karez","Qazi Ahmad",
  		"Qila Abdullah","Qila Ladgasht","Qila Safed","Qila Saifullah","Rawalpindi","Rabwah","Rahim Yar Khan","Rajan Pur",
  		"Rakhni","Ranipur","Ratodero","Rawalakot","Renala Khurd","Robat Thana","Rodkhan","Rohri","Sialkot","Sadiqabad",
  		"Safdar Abad- (Dhaban Singh)","Sahiwal","Saidu Sharif","Saindak","Sakrand","Sanjawi","Sargodha","Saruna",
  		"Shabaz Kalat","Shadadkhot","Shahbandar","Shahpur","Shahpur Chakar","Shakargarh","Shangla","Sharam Jogizai",
  		"Sheikhupura","Shikarpur","Shingar","Shorap","Sibi","Sohawa","Sonmiani","Sooianwala","Spezand","Spintangi",
  		"Sui","Sujawal","Sukkur","Suntsar","Surab","Swabi","Swat","Tando Adam","Tando Bago","Tangi","Tank City",
  		"Tar Ahamd Rind","Thalo","Thatta","Toba Tek Singh","Tordher","Tujal","Tump","Turbat","Umarao","Umarkot",
  		"Upper Dir","Uthal","Vehari","Veirwaro","Vitakri","Wadh","Wah Cantt","Warah","Washap","Wasjuk","Wazirabad",
  		"Yakmach","Zhob","Other"]
  end

  def create
  	return render json: params
  end

  def index
    @cities = ["Abbottabad","Adezai","Ali Bandar","Amir Chah","Attock","Ayubia","Bahawalpur","Baden",
      "Bagh","Bahawalnagar","Burewala","Banda Daud Shah","Bannu district|Bannu","Batagram","Bazdar",
      "Bela","Bellpat","Bhag","Bhakkar","Bhalwal","Bhimber","Birote","Buner","Burj","Chiniot","Chachro",
      "Chagai","Chah Sandan","Chailianwala","Chakdara","Chakku","Chakwal","Chaman","Charsadda","Chhatr",
      "Chichawatni","Chitral","Dadu","Dera Ghazi Khan","Dera Ismail Khan", "Dalbandin","Dargai","Darya Khan",
      "Daska","Dera Bugti","Dhana Sar","Digri","Dina City|Dina","Dinga",",Pakistan|Diplo","Diwana","Dokri","Drosh",
      "Duki","Dushi","Duzab","Faisalabad","Fateh Jang","Ghotki","Gwadar","Gujranwala","Gujrat","Gadra","Gajar",
      "Gandava","Garhi Khairo","Garruck","Ghakhar Mandi","Ghanian","Ghauspur","Ghazluna","Girdan","Gulistan","Gwash",
      "Hyderabad","Hala","Haripur","Hab Chauki","Hafizabad","Hameedabad","Hangu","Harnai","Hasilpur","Haveli Lakha",
      "Hinglaj","Hoshab","Islamabad","Islamkot","Ispikan","Jacobabad","Jamshoro","Jhang","Jhelum","Jamesabad","Jampur",
      "Janghar","Jati(Mughalbhin)","Jauharabad","Jhal","Jhal Jhao","Jhatpat","Jhudo","Jiwani","Jungshahi","Karachi",
      "Kotri","Kalam","Kalandi","Kalat","Kamalia","Kamararod","Kamber","Kamokey","Kanak","Kandi","Kandiaro","Kanpur",
      "Kapip","Kappar","Karak City","Karodi","Kashmor","Kasur","Katuri","Keti Bandar","Khairpur","Khanaspur","Khanewal",
      "Kharan","kharian","Khokhropur","Khora","Khushab","Khuzdar","Kikki","Klupro","Kohan","Kohat","Kohistan","Kohlu",
      "Korak","Korangi","Kot Sarae","Kotli","Lahore","Larkana","Lahri","Lakki Marwat","Lasbela","Latamber","Layyah",
      "Leiah","Liari","Lodhran","Loralai","Lower Dir","Shadan Lund","Multan","Mandi Bahauddin","Mansehra","Mian Chanu",
      "Mirpur","Pakistan|Moro","Mardan","Mach","Madyan","Malakand","Mand","Manguchar","Mashki Chah","Maslti","Mastuj",
      "Mastung","Mathi","Matiari","Mehar","Mekhtar","Merui","Mianwali","Mianez","Mirpur Batoro","Mirpur Khas",
      "Mirpur Sakro","Mithi","Mongora","Murgha Kibzai","Muridke","Musa Khel Bazar","Muzaffar Garh","Muzaffarabad",
      "Nawabshah","Nazimabad","Nowshera","Nagar Parkar","Nagha Kalat","Nal","Naokot","Nasirabad","Nauroz Kalat","Naushara",
      "Nur Gamma","Nushki","Nuttal","Okara","Ormara","Peshawar","Panjgur","Pasni City","Paharpur","Palantuk","Pendoo",
      "Piharak","Pirmahal","Pishin","Plandri","Pokran","Pounch","Quetta","Qambar","Qamruddin Karez","Qazi Ahmad",
      "Qila Abdullah","Qila Ladgasht","Qila Safed","Qila Saifullah","Rawalpindi","Rabwah","Rahim Yar Khan","Rajan Pur",
      "Rakhni","Ranipur","Ratodero","Rawalakot","Renala Khurd","Robat Thana","Rodkhan","Rohri","Sialkot","Sadiqabad",
      "Safdar Abad- (Dhaban Singh)","Sahiwal","Saidu Sharif","Saindak","Sakrand","Sanjawi","Sargodha","Saruna",
      "Shabaz Kalat","Shadadkhot","Shahbandar","Shahpur","Shahpur Chakar","Shakargarh","Shangla","Sharam Jogizai",
      "Sheikhupura","Shikarpur","Shingar","Shorap","Sibi","Sohawa","Sonmiani","Sooianwala","Spezand","Spintangi",
      "Sui","Sujawal","Sukkur","Suntsar","Surab","Swabi","Swat","Tando Adam","Tando Bago","Tangi","Tank City",
      "Tar Ahamd Rind","Thalo","Thatta","Toba Tek Singh","Tordher","Tujal","Tump","Turbat","Umarao","Umarkot",
      "Upper Dir","Uthal","Vehari","Veirwaro","Vitakri","Wadh","Wah Cantt","Warah","Washap","Wasjuk","Wazirabad",
      "Yakmach","Zhob","Osdther"]
  	@listings = Listing.where.not(title: nil).includes(:images).order('created_at DESC')
    @makers = Maker.all
  end

  def update
  	@listing = Listing.find_or_create_by({id: params[:id]})
  	@listing.update(create_params)
    # return render json: @listing
  	Listing.where(title: nil).delete_all
  	# return render json: params
  	redirect_to @listing, notice: "Your Ad is Live Now!!!"
  end

  def show
  	@listing = Listing.find(params[:id])
  end

  def images_uploading
  	# listing = Listing.find(params[:listing_id])
  	image = Image.create(image_url: params[:file], listing_id: params[:listing_id])
  	respond_to do |format|
  		format.json{render json: {status: 200} }
  	end
  end

  def search
    @listings = Listing.search params
    respond_to do |format|
      format.js
      # format.html
    end
  end

  private
  	def create_params
      params.require(:listing).permit(:id, :title, :description, :price, :model, :maker_id, :engine, :color, :miles, :mileage, :mobile, :city, :address, :person_name)
  	end
end
