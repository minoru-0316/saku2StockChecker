class Answer < ApplicationRecord

    # Answer.allで取得するときに、レコード作成日の降順で取得
    default_scope -> { order(created_at: :desc) }
  
    # create前にset_idメソッドを呼出す
    before_create :set_id
  
    private
      def set_id
        # id未設定、または、すでに同じidのレコードが存在する場合はループする
        while self.id.blank? || Answer.find_by(id: self.id).present? do
          # ランダムな20文字をidに設定し、whileの条件検証に戻る
          self.id = SecureRandom.alphanumeric(20)
        end
      end
  end