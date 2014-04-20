<body>
<div id="auth">
	<h3>Авторизация</h3>
	<form action="/TestLogin.php" name="form_auth" method="POST">
		<div id="auth_inp">
			<input type="text" placeholder="Логин">
			<input type="text" placeholder="Пароль"><br/>
		</div>
		<div id="auth_submit">
			<input type="submit" value="Войти">
			<button id="close_auth" form="none">Закрыть</button>
		</div>
	</form>
</div>
<div id="header">
	<div id="logo">
		<h1>MIETJOB</h1>
			<img src="/images/logo.png" title="MietJob.Ru" alt="MietJob.Ru">
		<h1>RU</h1>
	</div>
	<div id="menu">
	<? 
		if($account->IsLogin())
print <<<HERE
		<a href="#"><img src="/images/lenta.png"><span>Лента</span></a>
		<div id="v_line"></div>
		<a href="#"><img src="/images/mail.png"><span>Сообщения</span></a>
		<div id="v_line"></div>
		<a href="/exit.php"><img src="/images/exit.png"><span>Выйти</span></a>
HERE;
		else
print <<<HERE
		<a href="auth"><img src="/images/auth.png"><span>Войти</span></a>
		<div id="v_line"></div>
		<a href="#"><img src="/images/reg.png"><span>Регистрация</span></a>
HERE;
	?>
	</div>
</div>
<div id="slide">
</div>
<div id="wrap">
	<div id="filter">
		<div id="name_block">Фильтр</div>
		<form id="form_filter" method="GET">
			<input type="text" placeholder="Название">
			<input type="text" placeholder="Категория проекта">
			<input type="text" placeholder="Теги">
			<div id="form_date">Опубликовано за:</div>
			<a href="">24 часа</a><br/>
			<a href="">3 дня</a><br/>
			<a href="">неделю</a><br/>
			
			<input type="submit" value="Применить">
			<input type="reset">
		</form>
	</div>

	<div id="center">
		<div id="center_filter">
			<form id="form_filter_center" action="<?$href?>" method="GET"  onChange="this.submit();">
				<input type="checkbox" id="ch_fulltime" name="full" value="true" <?=($_GET['full']=='true')?'checked':false?>><label for="ch_fulltime"><span id="fulltime">фултайм</span></label>
				<input type="checkbox" id="ch_contract" name="contract" value="true" <?=($_GET['contract']=='true')?'checked':false?>><label for="ch_contract"><span id="contract">контракт</span></label>
				<input type="checkbox" id="ch_freelance" name="free" value="true" <?=($_GET['free']=='true')?'checked':false?>><label for="ch_freelance"><span id="freelance">фриланс</span></label>
			</form>
		</div>
		<? if($_GET['full'] == 'true') {?>
		<div id="annot_company">
			<div id="logo_company"><img src="/images/yandex_logo.png"></div>
			<div id="text_annot">
				<h4>JavaScript-разработчик прикладных сервисов</h4> <span id="fulltime">фултайм</span><br>
				<a href="#">Яндекс</a><br>
				<div id="info_annot">
					<span id="info_annot_atom"><img src="/images/speech_balloon.png"><b>0</b> откликов</span>
					<span id="info_annot_atom"><img src="/images/eye.png"><b>2</b> просмотров</span>
					<span id="info_annot_atom"><img src="/images/timer.png"><b>23</b> минуты назад</span>
				</div>
				<div id="location_annot">
					<img src="/images/location_pin.png"> Москва
				</div>
			</div>
		</div>
		<? } ?>
		<? if($_GET['contract'] == 'true') {?>
		<div id="annot_company">
			<div id="logo_company"><img src="/images/ok_logo.png"></div>
			<div id="text_annot">
				<h4>SEO специалист</h4> <span id="contract">контракт</span><br>
				<a href="#">Одноклассники</a><br>
				<div id="info_annot">
					<span id="info_annot_atom"><img src="/images/speech_balloon.png"><b>4</b> отклика</span>
					<span id="info_annot_atom"><img src="/images/eye.png"><b>225</b> просмотров</span>
					<span id="info_annot_atom"><img src="/images/timer.png"><b>2</b> часа назад</span>
				</div>
				<div id="location_annot">
					<img src="/images/location_pin.png"> Зеленоград
				</div>
			</div>
		</div>
		<? } ?>
		<? if($_GET['free'] == 'true') {?>
		<div id="annot_company">
			<div id="logo_company"><img src="/images/vk.png"></div>
			<div id="text_annot">
				<h4>Программист php</h4> <span id="freelance">фриланс</span><br>
				<a href="#">Вконтакте</a><br>
				<div id="info_annot">
					<span id="info_annot_atom"><img src="/images/speech_balloon.png"><b>224</b> отклика</span>
					<span id="info_annot_atom"><img src="/images/eye.png"><b>1000</b> просмотров</span>
					<span id="info_annot_atom"><img src="/images/timer.png"><b>5</b> дней назад</span>
				</div>
			</div>
			<div id="location_annot">
					<img src="/images/location_pin.png"> Санкт-Петербург
				</div>
		</div>
		<? } ?>
		<? if($_GET['free'] == 'true') {?>
		<div id="annot_company">
			<div id="logo_company"><img src="/images/mailru.png"></div>
			<div id="text_annot">
				<h4>JavaScript-разработчик прикладных сервисов</h4> <span id="freelance">фриланс</span><br>
				<a href="#">mail.ru</a><br>
				<div id="info_annot">
					<span id="info_annot_atom"><img src="/images/speech_balloon.png"><b>0</b> откликов</span>
					<span id="info_annot_atom"><img src="/images/eye.png"><b>2</b> просмотров</span>
					<span id="info_annot_atom"><img src="/images/timer.png"><b>23</b> минуты назад</span>
				</div>
				<div id="location_annot">
					<img src="/images/location_pin.png"> Саратов
				</div>
			</div>
		</div>
		<? } ?>
		<? if($_GET['contract'] == 'true') {?>
		<div id="annot_company">
			<div id="logo_company"><img src="/images/yandex_logo.png"></div>
			<div id="text_annot">
				<h4>SEO специалист</h4> <span id="contract">контракт</span><br>
				<a href="#">Яндекс</a><br>
				<div id="info_annot">
					<span id="info_annot_atom"><img src="/images/speech_balloon.png"><b>4</b> отклика</span>
					<span id="info_annot_atom"><img src="/images/eye.png"><b>225</b> просмотров</span>
					<span id="info_annot_atom"><img src="/images/timer.png"><b>2</b> часа назад</span>
				</div>
				<div id="location_annot">
					<img src="/images/location_pin.png"> Кострорма
				</div>
			</div>
		</div>
		<? } ?>
		<? if($_GET['free'] == 'true') {?>
		<div id="annot_company">
			<div id="logo_company"><img src="/images/yandex_logo.png"></div>
			<div id="text_annot">
				<h4>Программист php</h4> <span id="freelance">фриланс</span><br>
				<a href="#">Яндекс</a><br>
				<div id="info_annot">
					<span id="info_annot_atom"><img src="/images/speech_balloon.png"><b>224</b> отклика</span>
					<span id="info_annot_atom"><img src="/images/eye.png"><b>1000</b> просмотров</span>
					<span id="info_annot_atom"><img src="/images/timer.png"><b>5</b> дней назад</span>
				</div>
			</div>
			<div id="location_annot">
					<img src="/images/location_pin.png"> Ростов-на-Дону
				</div>
		</div>
		<? } ?>
	</div>

	<div id="company">
		<h3>Вакансии компании</h3>
		<div id="block_company">
			<span id="count_v">20</span>
			<div id="block_img_company"><img src="/images/yandex_logo.png"></div>
		</div>
		<div id="block_company">
			<span id="count_v">15</span>
			<div id="block_img_company"><img src="/images/vk.png"></div>
		</div>
		<div id="block_company">
			<span id="count_v">3</span>
			<div id="block_img_company"><img src="/images/mailru.png"></div>
		</div>
		<div id="block_company">
			<span id="count_v">2</span>
			<div id="block_img_company"><img src="/images/ok_logo.png"></div>
		</div>
	</div>
</div>