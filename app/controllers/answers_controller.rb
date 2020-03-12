class AnswersController < ApplicationController

    def index
      @answers = Answer.all
      @answer = @answers.each.find(params[:id])

      @counts = Answer.count

    end


    def new
      @answers = Answer.new
      @ages = Age.all
      @genders = Gender.all
      @jobs = Job.all
      @prefs = Pref.all
      @stockplains = Stockplain.all
    end


    def create
      @answer = Answer.new(answer_params)

        # 1: 必要数の算出（世帯人数とstockplainsの各基準値を掛ける・eachでループさせる）
        @stockplains = Stockplain.all
        base_stock_plains={}

        @stockplains.each do |stockplain|
          base_stock_plains.store(stockplain.stock_name, stockplain.stock_quantity * @answer.household_size)
        end
        # 【必要数】飲料水（２リットル）
        @answer.required_water = base_stock_plains.values[0]
        # 【必要数】カセットコンロ
        @answer.required_stove = 1
        # 【必要数】カセットボンベ
        @answer.required_gas = base_stock_plains.values[2]
        # 【必要数】白米（１袋=2kg）
        @answer.required_rice = base_stock_plains.values[3]
        # 【必要数】乾麺（1袋 = 300g)
        @answer.required_noodle = base_stock_plains.values[4]
        # 【必要数】乾麺・パスタ（1袋 = 600g)
        @answer.required_pasta = base_stock_plains.values[5]
        # 【必要数】【必要数】カップ麺
        @answer.required_cpnoodle = base_stock_plains.values[6]
        # 【必要数】パックご飯
        @answer.required_pkrice = base_stock_plains.values[7]
        # 【必要数】その他・シリアル
        @answer.required_etc = base_stock_plains.values[8]
        # 【必要数】レトルト食品-1
        @answer.required_retort_1 = base_stock_plains.values[9]
        # 【必要数】レトルト食品-2
        @answer.required_retort_2 = base_stock_plains.values[10]
        # 【必要数】缶詰（肉・魚）
        @answer.required_canned = base_stock_plains.values[11]

        # ture falseの判断をかく
        # 【判定】飲料水（２リットル）
        if @answer.required_water <= @answer.bottolwater_2L
          @answer.result_water = true
        end
        # 【判定】カセットコンロ
        if @answer.required_stove <= @answer.cooking_stove
          @answer.result_stove = true
        end
        # 【判定】カセットボンベ
        if @answer.required_gas <= @answer.cassette_gas
          @answer.result_gas = true
        end
        # 【判定】白米（１袋=2kg）
        if @answer.required_rice <= @answer.rice_2kg
          @answer.result_rice = true
        end
        # 【判定】乾麺（1袋 = 300g)
        if @answer.required_noodle <= @answer.dried_noodle
          @answer.result_noodle = true
        end
        # 【判定】乾麺・パスタ（1袋 = 600g)
        if @answer.required_pasta <= @answer.dried_pasta
          @answer.result_pasta = true
        end
        # 【判定】【必要数】カップ麺
        if @answer.required_cpnoodle <= @answer.cupped_noodle
          @answer.result_cpnoodle = true
        end
        # 【判定】パックご飯
        if @answer.required_pkrice <= @answer.packed_rice
          @answer.result_pkrice = true
        end
        # 【判定】その他・シリアル
        if @answer.required_etc <= @answer.cereal_etc
          @answer.result_etc = true
        end
        # 【判定】レトルト食品-1
        if @answer.required_retort_1 <= @answer.retort_food1
          @answer.result_retort_1 = true
        end
        # 【判定】レトルト食品-2
        if @answer.required_retort_2 <= @answer.retort_food2
          @answer.result_retort_2 = true
        end
        # 【判定】缶詰（肉・魚）
        if @answer.required_canned <= @answer.canned_food
          @answer.result_canned = true
        end

      if @answer.save
        answererId = @answer.id
        redirect_to action: 'show', id: answererId
        # logger.debug(answererId)
        # redirect_to answers_path

      else
        render 'new'
      end
    end


    def show
      @answer = Answer.find(params[:id])
      end




    private
    def answer_params
        params.require(:answer).permit(:pref_code, :gender_code, :age_code, :job_code, :housing_code, :pref_name, :gender_type, :age_period, :job_name, :seismic_response, :housing_possession, :housing_type, :household_size, :adult_num, :minor_num, :bottolwater_2L, :required_water, :cooking_stove, :required_stove, :cassette_gas, :required_gas, :rice_2kg, :required_rice, :dried_noodle, :required_noodle, :dried_pasta, :required_pasta, :cupped_noodle, :required_cpnoodle, :packed_rice, :required_pkrice, :cereal_etc, :required_etc, :retort_food1, :required_retort_1, :retort_food2, :required_retort_2, :canned_food, :required_canned, :user_item_1, :user_requied_num_1, :user_result_num_1, :user_memo_1, :user_item_2, :user_requied_num_2, :user_result_num_2, :user_memo_2, :user_item_3, :user_requied_num_3, :user_result_num_3, :user_memo_3, :user_item_4, :user_requied_num_4, :user_result_num_4, :user_memo_4, :user_item_5, :user_requied_num_5, :user_result_num_5, :user_memo_5)
    end


end

