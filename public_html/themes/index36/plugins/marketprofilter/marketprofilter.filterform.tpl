<!--
/********************************************************************************
* File: marketprofilter.filterform.tpl
* Extension: plugin 'marketprofilter'
* Description: HTML template формы фильтрации товаров.
* Compatibility: CMF/CMS Cotonti v.1+ (https://github.com/Cotonti/Cotonti)
* Dependencies: 
* 		 Bootstrap 5.3.+       (https://getbootstrap.com/); 
* 		 Font Awesome Free 7.1 (https://fontawesome.com/)
* Theme: cotcp 
* Version: 3.5.1
* Created: 01 Feb 2026 
* Updated: 04 Oct 2026 
* Copyright (c) 2026 webitproff | https://github.com/webitproff
* Source: https://github.com/webitproff/index36-cotonti-theme
* Demo : https://freelance-script.abuyfile.com/ | https://abuyfile.com/ 
* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)
*
* Changelog:
*   3.5.1 (04 Oct 2026)
*     - Совместимость с marketprofilter v3.5.1.
*     - Списки параметров выводятся через {FILTER_PARAM_LIST_HTML}
*       (удалены подциклы SELECT_LIST / CHECKBOX_LIST / RADIO_LIST).
********************************************************************************/
-->
<!-- BEGIN: FILTER_FORM -->
<div class="card p-3 mb-4 rounded-2 border border-success-subtle position-relative">
	<div class="position-absolute top-0 end-0">	
		<button type="button"
		class="btn btn-custom-hot-outline text-uppercase" 
		data-bs-toggle="modal" 
		data-bs-target="#marketFilterHelpModal"
		title="{PHP.L.Help}">
			<i class="fa-solid fa-circle-question fa-2xl"></i>
		</button>
	</div>
	<form action="{SEARCH_ACTION_URL}" method="get" class="mb-4">
		<input type="hidden" name="c" value="{PHP.c}" />
		<input type="hidden" name="e" value="market" />
		<input type="hidden" name="l" value="{PHP.lang}" />
		<input type="hidden" name="saveFilter" value="1" />
		
		<!-- BEGIN: ERROR -->
		<div class="alert alert-warning">{FILTER_ERROR}</div>
		<!-- END: ERROR -->
		
		<!-- BEGIN: FILTER_PARAM -->
		<div class="mb-3">
			<div class="d-flex align-items-center mb-1">
				<!-- IF {FILTER_PARAM_HELP} -->
				<a href="#" data-bs-toggle="modal" data-bs-target="#helpModal_{FILTER_PARAM_NAME}" class="me-2" title="{PHP.L.Help}">
					<i class="fa-solid fa-circle-question text-info"></i>
				</a>
				<!-- ENDIF -->
				<label class="form-label mb-0"><strong>{FILTER_PARAM_TITLE}</strong></label>
			</div>
			
			<!-- BEGIN: ERROR -->
			<div class="alert alert-warning">{FILTER_PARAM_ERROR}</div>
			<!-- END: ERROR -->
			
			<!-- RANGE -->
			<!-- IF {FILTER_PARAM_TYPE} == "range" -->
			<div class="w-100">
				<div class="d-flex justify-content-between mb-2">
					<span>{PHP.L.marketprofilter_from} {FILTER_PARAM_MIN} {PHP.L.marketprofilter_to}: <span id="value_{FILTER_PARAM_NAME}"><strong>{FILTER_PARAM_VALUE_MAX}</strong></span></span>
				</div>
				<input type="range"
				name="filter_{FILTER_PARAM_NAME}"
				id="range_{FILTER_PARAM_NAME}"
				min="0"
				max="{FILTER_PARAM_MAX}"
				value="{FILTER_PARAM_VALUE_MAX}"
				class="form-range"
				oninput="updateRangeValue('{FILTER_PARAM_NAME}', this.value)">
			</div>
			<!-- ENDIF -->
			
			<!-- SELECT -->
			<!-- IF {FILTER_PARAM_TYPE} == "select" -->
			<select name="filter_{FILTER_PARAM_NAME}" class="form-select">
				<option value="">---</option>
				{FILTER_PARAM_LIST_HTML}
			</select>
			<!-- ENDIF -->
			
			<!-- CHECKBOX -->
			<!-- IF {FILTER_PARAM_TYPE} == "checkbox" -->
			<div class="form-check-list">{FILTER_PARAM_LIST_HTML}</div>
			<!-- ENDIF -->
			
			<!-- RADIO -->
			<!-- IF {FILTER_PARAM_TYPE} == "radio" -->
			<div class="form-check-list">{FILTER_PARAM_LIST_HTML}</div>
			<!-- ENDIF -->
		</div>
		<!-- Модальное окно для подсказки параметра -->
		<!-- IF {FILTER_PARAM_HELP} -->
		<div class="modal fade" id="helpModal_{FILTER_PARAM_NAME}" tabindex="-1" aria-labelledby="helpModalLabel_{FILTER_PARAM_NAME}" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">{FILTER_PARAM_TITLE}</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						{FILTER_PARAM_HELP}
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Close}</button>
					</div>
				</div>
			</div>
		</div>
		<!-- ENDIF -->
		<!-- END: FILTER_PARAM -->
		
		<div class="row">
			<div class="col-12 mb-2">
				<input type="submit" name="search" class="btn btn-primary w-100" value="{PHP.L.marketprofilter_apply}" />
			</div>
			<div class="col-12 mb-2">
				<a class="btn btn-outline-danger w-100" href="{FILTER_RESET_URL}">
					<i class="fa-solid fa-filter-circle-xmark"></i> {PHP.L.marketprofilter_reset}
				</a>
			</div>
		</div>
	</form>
</div>

<script>
	function updateRangeValue(paramName, value) {
		const display = document.getElementById(`value_${paramName}`);
		if (display) display.textContent = value;
		const rangeInput = document.getElementById(`range_${paramName}`);
		if (rangeInput) {
			const max = parseFloat(rangeInput.max);
			const current = parseFloat(value);
			const percentage = (current / max) * 100;
			rangeInput.style.setProperty('--value-percentage', `${percentage}%`);
		}
	}
</script>

<style>
	.form-range {
    width: 100%;
    height: 6px;
    background: #ddd;
    border-radius: 5px;
    outline: none;
    -webkit-appearance: none;
	}
	.form-range::-webkit-slider-thumb {
    -webkit-appearance: none;
    width: 20px;
    height: 20px;
    background: #007bff;
    border-radius: 50%;
    cursor: pointer;
	}
	.form-range::-moz-range-thumb {
    width: 20px;
    height: 20px;
    background: #007bff;
    border-radius: 50%;
    cursor: pointer;
	}
	.form-range::-webkit-slider-runnable-track {
    background: linear-gradient(to right, #ffc107 calc(var(--value-percentage, 0%)), #ddd calc(var(--value-percentage, 0%)), #ddd 100%);
	}
</style>

<!-- Модальное окно -->
<div class="modal fade" id="marketFilterHelpModal" tabindex="-1" aria-labelledby="marketFilterHelpModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">{PHP.L.Help}</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				{PHP.L.marketprofilter_market_list_help}
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Close}</button>
			</div>
		</div>
	</div>
</div>

<!-- END: FILTER_FORM -->