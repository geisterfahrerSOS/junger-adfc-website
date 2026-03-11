<script>
	// @ts-nocheck
	import { onMount } from 'svelte';
	import { Calendar } from '@fullcalendar/core';
	import listPlugin from '@fullcalendar/list';
	import googleCalendarPlugin from '@fullcalendar/google-calendar';
	import deLocale from '@fullcalendar/core/locales/de';

	let calendarEl;

	onMount(() => {
		let calendar = new Calendar(calendarEl, {
			plugins: [listPlugin, googleCalendarPlugin],
			locale: deLocale,
			buttonText: {
				today: 'Heute'
			},
			height: '500px',
			initialView: 'listMonth',
			googleCalendarApiKey: 'AIzaSyAQjO3ZK_tI4BxoIG7iL9TMUi-c89_Qi7k',
			eventTimeFormat: {
				hour: '2-digit',
				minute: '2-digit',
				hour12: false
			},
			events: {
				googleCalendarId: '11aec06512016de5b07d95df66ec490e9914cfe9949e7f51c5ed3e35af8bec7b@group.calendar.google.com',
				color: '#FFD700', // Yellow dots
				textColor: 'black'
			}
		});

		calendar.render();
	});
</script>

<svelte:head>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</svelte:head>

<div class="p-4 flex flex-col items-center gap-4">
    <div class="">
        <h1 class="font-extrabold">Hallo und Herzlich Willkommen beim Jungen ADFC Rhein-Neckar</h1>
        <h2>Unser Instagram Kanal: <a href="https://www.instagram.com/junger_adfc_rhein_neckar/">@jung_adfc_rhein_neckar</a></h2>
        <h3>Wir Treffen uns am 2. und 4. Dienstag im Monat um 20 Uhr am ZuM in Heidelberg</h3>
        <h2>Hier findest du unsere Nächsten Termine</h2>
	    <div bind:this={calendarEl}></div>
        <a href="https://calendar.google.com/calendar/u/0?cid=MTFhZWMwNjUxMjAxNmRlNWIwN2Q5NWRmNjZlYzQ5MGU5OTE0Y2ZlOTk0OWU3ZjUxYzVlZDNlMzVhZjhiZWM3YkBncm91cC5jYWxlbmRhci5nb29nbGUuY29t">
        Hier 
        </a>
        kannst du den Kalender hinzufügen
    </div>
</div>