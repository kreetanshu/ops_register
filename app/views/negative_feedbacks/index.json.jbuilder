json.array!(@negative_feedbacks) do |negative_feedback|
  json.extract! negative_feedback, :id, :date, :cook, :customer, :feedback, :remark, :spid, :customer_id
  json.url negative_feedback_url(negative_feedback, format: :json)
end
