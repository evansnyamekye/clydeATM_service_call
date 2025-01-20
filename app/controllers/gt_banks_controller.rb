class GtBanksController < ApplicationController
  before_action :set_gt_bank, only: %i[show edit update destroy]

  # GET /gt_banks or /gt_banks.json
  def index
    @gt_banks = GtBank.all
  end

  # GET /gt_banks/1 or /gt_banks/1.json
  def show; end

  # GET /gt_banks/new
  def new
    @gt_bank = GtBank.new
  end

  # GET /gt_banks/1/edit
  def edit; end

  # POST /gt_banks or /gt_banks.json
  def create
    @gt_bank = GtBank.new(gt_bank_params)

    respond_to do |format|
      if @gt_bank.save
        format.html { redirect_to @gt_bank, notice: 'Gt bank was successfully created.' }
        format.json { render :show, status: :created, location: @gt_bank }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gt_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gt_banks/1 or /gt_banks/1.json
  def update
    respond_to do |format|
      if @gt_bank.update(gt_bank_params)
        format.html { redirect_to @gt_bank, notice: 'Gt bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @gt_bank }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gt_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gt_banks/1 or /gt_banks/1.json
  def destroy
    @gt_bank.destroy!

    respond_to do |format|
      format.html { redirect_to gt_banks_path, status: :see_other, notice: 'Gt bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gt_bank
    @gt_bank = GtBank.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def gt_bank_params
    params.expect(gt_bank: %i[bank_name branch_name custodian_name contact atm_model installation_date
                              location atm_serial_number])
  end
end
