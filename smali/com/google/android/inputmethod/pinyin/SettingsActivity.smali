.class public Lcom/google/android/inputmethod/pinyin/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

.field private mFaultTolerancePref:Landroid/preference/CheckBoxPreference;

.field private mKeySoundPref:Landroid/preference/CheckBoxPreference;

.field private mPredictionChinesePref:Landroid/preference/CheckBoxPreference;

.field private mPredictionEnglishPref:Landroid/preference/CheckBoxPreference;

.field private mSpellCorrectionPref:Landroid/preference/CheckBoxPreference;

.field private mTraditionPref:Landroid/preference/CheckBoxPreference;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateWidgets()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mFaultTolerancePref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getFaultTolerance()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getKeySound()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getVibrate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mPredictionChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getPredictionChinese()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mPredictionEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getPredictionEnglish()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mSpellCorrectionPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getSpellCorrection()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getAutoCapitalization()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mTraditionPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getTradition()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v5, 0x7f050002

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 65
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_28

    .line 66
    const v5, 0x7f0a0038

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 68
    .local v4, switchKeyPref:Landroid/preference/Preference;
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    .end local v4           #switchKeyPref:Landroid/preference/Preference;
    :cond_28
    const v5, 0x7f0a0030

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mFaultTolerancePref:Landroid/preference/CheckBoxPreference;

    .line 75
    const v5, 0x7f0a0031

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    .line 77
    const v5, 0x7f0a0032

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 79
    const v5, 0x7f0a0033

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mPredictionChinesePref:Landroid/preference/CheckBoxPreference;

    .line 81
    const v5, 0x7f0a0034

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mPredictionEnglishPref:Landroid/preference/CheckBoxPreference;

    .line 83
    const v5, 0x7f0a0035

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mSpellCorrectionPref:Landroid/preference/CheckBoxPreference;

    .line 85
    const v5, 0x7f0a0036

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    .line 87
    const v5, 0x7f0a0037

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mTraditionPref:Landroid/preference/CheckBoxPreference;

    .line 90
    const v5, 0x7f0a007a

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 92
    .local v0, aboutPref:Landroid/preference/Preference;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0a007e

    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a000c

    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    const v5, 0x7f0a0079

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 97
    .local v2, mTOSPref:Landroid/preference/Preference;
    const v5, 0x7f0a0078

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 99
    .local v1, mPrivacyPref:Landroid/preference/Preference;
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/inputmethod/pinyin/Settings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/Settings;

    .line 105
    const v5, 0x7f0a0039

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->updatePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->updateWidgets()V

    .line 108
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "resid"

    .prologue
    .line 188
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, view:Landroid/view/View;
    const v3, 0x7f0d0001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, progress:Landroid/view/View;
    const/high16 v3, 0x7f0d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 191
    .local v2, webView:Landroid/webkit/WebView;
    new-instance v3, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;-><init>(Lcom/google/android/inputmethod/pinyin/SettingsActivity;Landroid/view/View;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 211
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 118
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->releaseInstance()V

    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 120
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 126
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mFaultTolerancePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Settings;->setFaultTolerance(Z)V

    .line 127
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mKeySoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Settings;->setKeySound(Z)V

    .line 128
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Settings;->setVibrate(Z)V

    .line 129
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mPredictionChinesePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Settings;->setPredictionChinese(Z)V

    .line 130
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mPredictionEnglishPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Settings;->setPredictionEnglish(Z)V

    .line 131
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mSpellCorrectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Settings;->setSpellCorrection(Z)V

    .line 132
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mAutoCapitalizationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Settings;->setAutoCapitalization(Z)V

    .line 133
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->mTraditionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Settings;->setTradition(Z)V

    .line 135
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->writeBack()V

    .line 137
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;

    move-result-object v0

    .line 139
    .local v0, ime:Lcom/google/android/inputmethod/pinyin/PinyinIME;
    if-eqz v0, :cond_5e

    .line 140
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->startDecoderService()Z

    .line 141
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getFaultTolerance()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->setFaultTolerance(Z)V

    .line 143
    :cond_5e
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 173
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0079

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 175
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->showDialog(I)V

    move v0, v2

    .line 183
    :goto_19
    return v0

    .line 178
    :cond_1a
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0078

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_33

    .line 180
    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->showDialog(I)V

    move v0, v2

    .line 181
    goto :goto_19

    .line 183
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-super {p0, v0, p1}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_19
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 113
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->updateWidgets()V

    .line 114
    return-void
.end method

.method public updatePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V
    .registers 9
    .parameter "parentPref"
    .parameter "prefKey"

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 159
    .local v4, preference:Landroid/preference/Preference;
    if-nez v4, :cond_7

    .line 170
    :cond_6
    :goto_6
    return-void

    .line 162
    :cond_7
    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_6

    .line 164
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 165
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 166
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 167
    .local v2, listSize:I
    if-nez v2, :cond_6

    .line 168
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method
