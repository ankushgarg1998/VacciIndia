<aside class="sidebar">
  <h4 class="font-weight-semibold mb-lg">Vaccination</h4>

  <ul class="nav nav-list narrow mb-xlg">
    <li ${pageContext.request.requestURI eq '/vaccine-bcg' ? 'class="active"' : ''}><a href="vaccine-bcg">BCG Vaccine</a></li>
    <li ${pageContext.request.requestURI eq '/vaccine-dtp' ? 'class="active"' : ''}><a href="vaccine-dtp">DTP-containing vaccine</a></li>
    <li ${pageContext.request.requestURI eq '/vaccine-hepb' ? 'class="active"' : ''}><a href="vaccine-hepb">Hepatitis-B</a></li>
    <li ${pageContext.request.requestURI eq '/vaccine-hib' ? 'class="active"' : ''}><a href="vaccine-hib">Haemophilus Influenzae type B</a></li>
    <li ${pageContext.request.requestURI eq '/vaccine-hpv' ? 'class="active"' : ''}><a href="vaccine-hpv">Human papilloma virus </a></li>
    <li ${pageContext.request.requestURI eq '/vaccine-mmr' ? 'class="active"' : ''}><a href="vaccine-mmr">MMR</a></li>
    <li ${pageContext.request.requestURI eq '/vaccine-pneum' ? 'class="active"' : ''}><a href="vaccine-pneum">Pneumococcal (Conjugate)</a></li>
    <li ${pageContext.request.requestURI eq '/vaccine-polio' ? 'class="active"' : ''}><a href="vaccine-polio">Polio</a></li>
    <li ${pageContext.request.requestURI eq '/vaccine-rota' ? 'class="active"' : ''}><a href="vaccine-rota">Rotavirus</a></li>
  </ul>
</aside>
