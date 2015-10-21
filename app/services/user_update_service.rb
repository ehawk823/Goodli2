class UserUpdateService

  def initialize(params, user)
    @name = params[:user][:name]
    @location = params[:user][:location]
    @mission = params[:user][:bio]
    @image = params[:user][:image]
    @user = user
  end

  def update_image
    if @image == nil
      @image = @user.image
    else
      @user.image = @image
      @user.save
    end
  end

  def update_name
    if @name == nil
      @name = @user.name
    else
      @user.name = @name
      @user.save
    end
  end

  def update_location
    if @location == nil
      @location = @user.location
    else
      @user.location = @location
      @user.save
    end
  end

  def update_mission
    if @mission == nil
      @mission = @user.bio
    else
      @user.bio = @mission
      @user.save
    end
  end


end
