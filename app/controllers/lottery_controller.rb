class LotteryController < ApplicationController
    def winnerselector
        @number_list = [
            "1","2","3","4","5","6","7","8","9","10",
            "11","12","13","14","15","16","17","18","19","20",
            "21","22","23","24","25","26","27","28","29","30",
            "31","32","33","34","35","36","37","38","39","40",
            "41","42","43","44","45"
            ]
            #비복원추출로 임의추출해야함 #
        @winnernumber = @number_list.sample(7).sort # 배열에서 비복원추출한 내용을 변수에 저장, (n)개의 표본 추출
        @image_1 = @winnernumber[0] + ".jpg"
        @image_2 = @winnernumber[1] + ".jpg"
        @image_3 = @winnernumber[2] + ".jpg"
        @image_4 = @winnernumber[3] + ".jpg"
        @image_5 = @winnernumber[4] + ".jpg"
        @image_6 = @winnernumber[5] + ".jpg"
        # 보너스 번호
        @image_b = @winnernumber[6] + ".jpg"
    end
end
