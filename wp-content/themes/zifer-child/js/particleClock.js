jQuery(document).ready(function($){ 	
    var numData = [
        "1111/1001/1001/1001/1001/1001/1111", //0
        "0001/0001/0001/0001/0001/0001/0001", //1
        "1111/0001/0001/1111/1000/1000/1111", //2
        "1111/0001/0001/1111/0001/0001/1111", //3
        "1001/1001/1001/1111/0001/0001/0001", //4
        "1111/1000/1000/1111/0001/0001/1111", //5
        "1111/1000/1000/1111/1001/1001/1111", //6
        "1111/0001/0001/0001/0001/0001/0001", //7
        "1111/1001/1001/1111/1001/1001/1111", //8
        "1111/1001/1001/1111/0001/0001/1111", //9
        "0000/0000/0010/0000/0010/0000/0000" //:
    ]
	var testDocument = document.getElementById("index_clock_cas");
	if (testDocument == null || typeof(testDocument) == 'undefine' || testDocument == 0) return ;
    var clockCanvas = document.getElementById("index_clock_cas"),
            clockBgCanvas = document.getElementById("index_clock_bgcas"),
            ctx = clockCanvas.getContext('2d'),
            bgctx = clockBgCanvas.getContext("2d");

    clockBgCanvas.width = clockCanvas.width;
    clockBgCanvas.height = clockCanvas.height;
	//alert(clockCanvas.width+' '+clockCanvas.height);
    var P_radius = 3, Gravity = 9.8;
    var Particle = function () {
        this.x = 0;
        this.y = 0;
        this.vx = 0;
        this.vy = 0;
        this.color = "";
        this.visible = false;
        this.drop = false;
    }
    var lastColor;
    Particle.prototype = {
        constructors: Particle,
        paint: function () {		//��������
            if (lastColor !== this.color) {
                ctx.fillStyle = lastColor = this.color;
            }
            ctx.beginPath();
            ctx.arc(this.x, this.y, this.radius, 0, 2 * Math.PI);
            ctx.fill();
        },
        reset: function (x, y, color) {		//����
            this.x = x;
            this.y = y;
            this.vx = 0;
            this.vy = 0;
            this.color = color;
            this.visible = true;
            this.drop = false;
            this.radius = 0;
        },
        isDrop: function () {		//����
            this.drop = true;
            var vx = Math.random() * 15 + 10
            var vy = -Math.random() * 50 + 10;
            this.vx = Math.random() >= 0.5 ? -vx : vx;
            this.vy = vy;
        },
        update: function (time) {		//ÿһ֡�Ķ���
            if (this.drop) {
                this.x += this.vx * time;
                this.y += this.vy * time;

                var vy = this.vy + Gravity * time;

                if (this.y >= clockCanvas.height - P_radius) {
                    this.y = clockCanvas.height - P_radius
                    vy = -vy * 0.8;
                }

                this.vy = vy;

                if (this.x < -P_radius || this.x > clockCanvas.width + P_radius || this.y > clockCanvas.height + P_radius) {
                    this.visible = false;
                }
            }

            if (this.radius < P_radius) {
                this.radius += 0.5;
            }
        }
    }

    window.RAF = (function () {
        return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function (callback) {
                    window.setTimeout(callback, 1000 / 60);
                };
    })();

    var timeCount_0 = 0, timeCount_1 = 0, particles = [];
    function initAnimate() {
        for (var i = 0; i < 200; i++) {
            var p = new Particle();
            particles.push(p);
        }

        timeCount_0 = new Date();
        timeCount_1 = new Date();

        drawBg();

        setTime(timeCount_0);
        animate();
    }

    function animate() {
        ctx.clearRect(0, 0, clockCanvas.width, clockCanvas.height);

        var timeCount_2 = new Date();

        if (timeCount_1 - timeCount_0 >= 1000) {
            setTime(timeCount_1);
            timeCount_0 = timeCount_1;
        }

        particles.forEach(function (p) {
            if (p.visible) {
                p.update(16 / 70);
                p.paint();
            }
        });

        timeCount_1 = timeCount_2;

        RAF(animate)
    }


    var X_J = 1;       //Բ����
    var xjg = 5;       //������ĸ֮��ľ���
    var yjg = 5;       //ÿһ�����¾���
    function drawBg() {
        var tx = (clockCanvas.width - ((P_radius * 2 + X_J) * 4 * 8 + 7 * xjg)) / 2;
        for (var i = 0; i < 8; i++) {
            var ty = (clockCanvas.height - ((P_radius + yjg) * 6)) / 2;
            for (var j = 0; j < numData[0].length; j++) {
                var tt = numData[0].charAt(j);
                if (tt === "/") {
                    ty += yjg;
                } else if(tt==1 || tt==0){
                    var x = tx + j % 5 * (P_radius * 2 + X_J),
                            y = ty;
                    bgctx.beginPath();
                    bgctx.arc(x, y, P_radius, 0, 2 * Math.PI);
                    bgctx.fillStyle = "#FFF";
                    bgctx.fill();
                }
            }
            tx += xjg + 4 * (P_radius * 2 + X_J);
        }
    }

    var lastDate;
    function setTime(time) {
        var h = time.getHours() + "",
                m = time.getMinutes() + "",
                s = time.getSeconds() + "";
        h = h.length === 1 ? "0" + h : h;
        m = m.length === 1 ? "0" + m : m;
        s = s.length === 1 ? "0" + s : s;

        var nowdate = h + ":" + m + ":" + s;

        var color = "";
        var i = 0;

//        ����һ�ε�ʱ����бȽϣ���ȡ�ı���ַ���
        if(lastDate){
            for(var k=0;k<nowdate.length;k++){
                if(lastDate.charAt(k) !== nowdate.charAt(k)){
                    i=k;
                    break;
                }
            }
        }
        lastDate = nowdate;

        var tx = (clockCanvas.width - ((P_radius * 2 + X_J) * 4 * 8 + 7 * xjg)) / 2; //����ʱ���x��ֵ
        var ty = (clockCanvas.height - ((P_radius + yjg) * 6)) / 2;  //����ʱ���y��ֵ
//        ����ʱ���ַ�
        for (; i < nowdate.length; i++) {
            var charX = tx + i*(xjg + 4 * (P_radius * 2 + X_J));   //������ַ���X��ֵ
            var charY = ty;

            var timeChar = nowdate.charAt(i);
            var text = numData[timeChar === ":" ? 10 : +timeChar];     //��ȡ���ַ���ӳ���

            if(i<3){
                color = "#279548";
            }else if(i<6){
                color = "#D65050";
            }else {
                color = "#797C17";
            }

            for(var j=0;j<text.length;j++){
                var tt = text.charAt(j);
                if(tt==="/"){
                    charY+=yjg;
                }else{
                    var x = charX + j % 5 * (P_radius * 2 + X_J);
                    var y = charY;
                    var pp = null;
                    var usefullp = null;

                    for(var ref=0;ref<particles.length;ref++){
                        var p = particles[ref];
                        if(p.visible&&p.x===x&&p.y===y){
                            pp = p;
                        }else if(!p.visible&&!usefullp){
                            usefullp = p;
                        }
                    }

                    if(pp&&tt==0){
                        pp.isDrop();
                    }else if(!pp&&tt==1){
                        usefullp.reset(x , y , color);
                    }
                }
            }
        }
    }

    initAnimate()
}); 