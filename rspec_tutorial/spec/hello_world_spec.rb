class User
    after_update:send_email
    def send_email
      ReportMailer.update_mail(id).deliver_later
    end
  end
  
 
  include ActiveJob::TestHelper
  RSpec.describe User do
     # other tests
    it 'enqueues an email on update' do   
      expect { user.update(name: 'Hello') }.
      to have_enqueued_job(ActionMailer::MailDeliveryJob).
      with('ReportMailer', 'update_mail', 'deliver_now', user.id)
    end
  end