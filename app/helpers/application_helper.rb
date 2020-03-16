module ApplicationHelper

    def default_meta_tags
        {
          site: 'sakuSAKU備蓄チェック',
          title: 'sakuSAkU備蓄チェック||ご自宅の防災備蓄をカンタンにチェックできるwebアプリです。',
          reverse: true,
          separator: '|',
          description: 'sakuSAKU備蓄チェックは、万一の非常時用にご家庭の防災備蓄をお手軽にチェックできます。「何を備蓄すれば良いか分からない方」や「家族で備蓄を話し合うきっかけが欲しい方」におすすめです。最短3分程度で終わるので空いた時間でカンタンにチェックできます。是非、ご利用ください。',
          keywords: '地震,台風,備蓄,チェック,保存食',
          canonical: request.original_url,
          noindex: ! Rails.env.production?,
          icon: [
            { href: image_url('favicon.ico') },
            { href: image_url('icon.png'), rel: 'apple-touch-icon-180x180.png', sizes: '180x180', type: 'image/png' },
          ],
          og: {
            site_name: 'sakuSAKU備蓄チェック',
            title: :title,
            description: 'sakuSAKU備蓄チェックは、万一の非常時用にご家庭の防災備蓄をお手軽にチェックできます。「何を備蓄すれば良いか分からない方」や「家族で備蓄を話し合うきっかけが欲しい方」におすすめです。',
            type: 'website',
            url: request.original_url,
            image: image_url('ogp.png'),
            locale: 'ja_JP',
          },
        #   twitter: {
        #     card: 'summary_large_image',
        #     site: '@ツイッターのアカウント名',
        #   }
        #   fb: {
        #     app_id: '自身のfacebookのapplication ID'
        #   }
        }
      end

      
end

