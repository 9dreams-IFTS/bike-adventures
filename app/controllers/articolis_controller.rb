class ArticolisController < ApplicationController
  before_action :set_channel, only: %i[ show edit update destroy]
  before_action :authenticate_user!, except: %i[ show ]
  before_action :set_articoli, only: %i[ show edit update destroy ]

  # GET /articolis or /articolis.json
  def index
    @articolis = Articoli.all
  end

  # GET /articolis/1 or /articolis/1.json
  def show
  end

  # GET /articolis/new
  def new
    @articoli = Articoli.new
  end

  # GET /articolis/1/edit
  def edit
  end

  # POST /articolis or /articolis.json
  def create
    @articoli = Articoli.new(articoli_params)

    respond_to do |format|
      if @articoli.save
        format.html { redirect_to @articoli, notice: "Articoli was successfully created." }
        format.json { render :show, status: :created, location: @articoli }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @articoli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articolis/1 or /articolis/1.json
  def update
    respond_to do |format|
      if @articoli.update(articoli_params)
        format.html { redirect_to @articoli, notice: "Articoli was successfully updated." }
        format.json { render :show, status: :ok, location: @articoli }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @articoli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articolis/1 or /articolis/1.json
  def destroy
    @articoli.destroy!

    respond_to do |format|
      format.html { redirect_to articolis_path, status: :see_other, notice: "Articoli was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articoli
      @articoli = Articoli.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def articoli_params
      params.expect(articoli: [ :titolo, :descrizione, :prezzo, :cover])
    end
end
