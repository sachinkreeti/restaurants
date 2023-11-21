class ReservationGuestsController < ApplicationController
  before_action :set_reservation_guest, only: %i[ show edit update destroy ]

  # GET /reservation_guests or /reservation_guests.json
  def index
    @reservation_guests = ReservationGuest.all
  end

  # GET /reservation_guests/1 or /reservation_guests/1.json
  def show
  end

  # GET /reservation_guests/new
  def new
    @reservation_guest = ReservationGuest.new
  end

  # GET /reservation_guests/1/edit
  def edit
  end

  # POST /reservation_guests or /reservation_guests.json
  def create
    @reservation_guest = ReservationGuest.new(reservation_guest_params)

    respond_to do |format|
      if @reservation_guest.save
        format.html { redirect_to reservation_guest_url(@reservation_guest), notice: "Reservation guest was successfully created." }
        format.json { render :show, status: :created, location: @reservation_guest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservation_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservation_guests/1 or /reservation_guests/1.json
  def update
    respond_to do |format|
      if @reservation_guest.update(reservation_guest_params)
        format.html { redirect_to reservation_guest_url(@reservation_guest), notice: "Reservation guest was successfully updated." }
        format.json { render :show, status: :ok, location: @reservation_guest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reservation_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservation_guests/1 or /reservation_guests/1.json
  def destroy
    @reservation_guest.destroy

    respond_to do |format|
      format.html { redirect_to reservation_guests_url, notice: "Reservation guest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation_guest
      @reservation_guest = ReservationGuest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_guest_params
      params.require(:reservation_guest).permit(:reservation_id, :guest_name, :contact_number, :email)
    end
end
