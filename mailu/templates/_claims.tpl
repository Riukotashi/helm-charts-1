{{/* Admin pod persistent volume claim name */}}
{{ define "mailu.admin.claimName" }}
{{- .Values.persistence.single_pvc | ternary (include "mailu.claimName" .) .Values.admin.persistence.claimNameOverride | default (printf "%s-admin" (include "mailu.fullname" .)) -}}
{{- end -}}

{{/* Clamav pod persistent volume claim name */}}
{{ define "mailu.clamav.claimName" }}
{{- .Values.persistence.single_pvc | ternary (include "mailu.claimName" .) .Values.clamav.persistence.claimNameOverride | default (printf "%s-clamav" (include "mailu.fullname" .)) -}}
{{- end -}}

{{/* Dovecot pod persistent volume claim name */}}
{{ define "mailu.dovecot.claimName" }}
{{- .Values.persistence.single_pvc | ternary (include "mailu.claimName" .) .Values.dovecot.persistence.claimNameOverride | default (printf "%s-dovecot" (include "mailu.fullname" .)) -}}
{{- end -}}

{{/* Postfix pod persistent volume claim name */}}
{{ define "mailu.postfix.claimName" }}
{{- .Values.persistence.single_pvc | ternary (include "mailu.claimName" .) .Values.postfix.persistence.claimNameOverride | default (printf "%s-postfix" (include "mailu.fullname" .)) -}}
{{- end -}}

{{/* Rspamd pod persistent volume claim name */}}
{{ define "mailu.rspamd.claimName" }}
{{- .Values.persistence.single_pvc | ternary (include "mailu.claimName" .) .Values.rspamd.persistence.claimNameOverride | default (printf "%s-rspamd" (include "mailu.fullname" .)) -}}
{{- end -}}

{{/* Roundcube pod persistent volume claim name */}}
{{ define "mailu.roundcube.claimName" }}
{{- .Values.persistence.single_pvc | ternary (include "mailu.claimName" .) .Values.roundcube.persistence.claimNameOverride | default (printf "%s-roundcube" (include "mailu.fullname" .)) -}}
{{- end -}}

{{/* Fetchmail pod persistent volume claim name */}}
{{ define "mailu.fetchmail.claimName" }}
{{- .Values.persistence.single_pvc | ternary (include "mailu.claimName" .) .Values.fetchmail.persistence.claimNameOverride | default (printf "%s-fetchmail" (include "mailu.fullname" .)) -}}
{{- end -}}
