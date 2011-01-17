.class public Lcom/google/android/inputmethod/pinyin/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AUTO_CAPITALIZATION:I = 0x200

.field private static final FAULT_TOLERANCE:I = 0x10

.field private static final KEYSOUND:I = 0x1

.field private static final LAST_MODE:I = 0x40

.field private static final PREDICT_CHINESE:I = 0x4

.field private static final PREDICT_ENGLISH:I = 0x80

.field private static final SETTINGS_AUTO_CAPITALIZATION_KEY:Ljava/lang/String; = "A"

.field private static final SETTINGS_FAULT_TOLERANCE_KEY:Ljava/lang/String; = "F"

.field private static final SETTINGS_KEYSOUND_KEY:Ljava/lang/String; = "K"

.field private static final SETTINGS_LAST_MODE_KEY:Ljava/lang/String; = "M"

.field private static final SETTINGS_PREDICTION_CHINESE_KEY:Ljava/lang/String; = "P"

.field private static final SETTINGS_PREDICTION_ENGLISH_KEY:Ljava/lang/String; = "E"

.field private static final SETTINGS_SPELL_CORRECTION_KEY:Ljava/lang/String; = "C"

.field private static final SETTINGS_STROKE_KEY:Ljava/lang/String; = "S"

.field private static final SETTINGS_TRADITION_KEY:Ljava/lang/String; = "T"

.field private static final SETTINGS_VIBRATE_KEY:Ljava/lang/String; = "V"

.field private static final SPELL_CORRECTION:I = 0x100

.field private static final STROKE:I = 0x8

.field private static final TRADITION:I = 0x20

.field private static final VIBRATE:I = 0x2

.field private static mAutoCapitalization:Z

.field private static mChanges:I

.field private static mFaultTolerance:Z

.field private static mInstance:Lcom/google/android/inputmethod/pinyin/Settings;

.field private static mKeySound:Z

.field private static mLastMode:I

.field private static mPredictionChinese:Z

.field private static mPredictionEnglish:Z

.field private static mRefCount:I

.field private static mSharedPref:Landroid/content/SharedPreferences;

.field private static mSpellCorrection:Z

.field private static mStroke:Z

.field private static mTradition:Z

.field private static mVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const-class v0, Lcom/google/android/inputmethod/pinyin/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->$assertionsDisabled:Z

    .line 51
    sput v1, Lcom/google/android/inputmethod/pinyin/Settings;->mRefCount:I

    return-void

    :cond_f
    move v0, v1

    .line 27
    goto :goto_a
.end method

.method protected constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "pref"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mRefCount:I

    .line 68
    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 69
    sput-object p1, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 70
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/Settings;->initConfs()V

    .line 71
    return-void
.end method

.method public static getAutoCapitalization()Z
    .registers 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mAutoCapitalization:Z

    return v0
.end method

.method public static getFaultTolerance()Z
    .registers 1

    .prologue
    .line 218
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mFaultTolerance:Z

    return v0
.end method

.method public static getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/Settings;
    .registers 2
    .parameter "pref"

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mInstance:Lcom/google/android/inputmethod/pinyin/Settings;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/google/android/inputmethod/pinyin/Settings;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/Settings;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mInstance:Lcom/google/android/inputmethod/pinyin/Settings;

    .line 77
    :cond_b
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->$assertionsDisabled:Z

    if-nez v0, :cond_19

    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    if-eq p0, v0, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_19
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mRefCount:I

    .line 79
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mInstance:Lcom/google/android/inputmethod/pinyin/Settings;

    return-object v0
.end method

.method public static getKeySound()Z
    .registers 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mKeySound:Z

    return v0
.end method

.method public static getLastMode()I
    .registers 1

    .prologue
    .line 240
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mLastMode:I

    return v0
.end method

.method public static getPredictionChinese()Z
    .registers 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionChinese:Z

    return v0
.end method

.method public static getPredictionEnglish()Z
    .registers 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionEnglish:Z

    return v0
.end method

.method public static getSpellCorrection()Z
    .registers 1

    .prologue
    .line 171
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSpellCorrection:Z

    return v0
.end method

.method public static getStroke()Z
    .registers 1

    .prologue
    .line 207
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mStroke:Z

    return v0
.end method

.method public static getTradition()Z
    .registers 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mTradition:Z

    return v0
.end method

.method public static getVibrate()Z
    .registers 1

    .prologue
    .line 152
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mVibrate:Z

    return v0
.end method

.method private initConfs()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "K"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mKeySound:Z

    .line 129
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "V"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mVibrate:Z

    .line 130
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "P"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionChinese:Z

    .line 131
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "E"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionEnglish:Z

    .line 132
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "C"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSpellCorrection:Z

    .line 133
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "A"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mAutoCapitalization:Z

    .line 134
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "S"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mStroke:Z

    .line 135
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "F"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mFaultTolerance:Z

    .line 136
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "T"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mTradition:Z

    .line 137
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "M"

    const/16 v2, 0x100

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mLastMode:I

    .line 138
    return-void
.end method

.method public static releaseInstance()V
    .registers 2

    .prologue
    .line 121
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mRefCount:I

    .line 122
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mRefCount:I

    if-nez v0, :cond_d

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/Settings;->mInstance:Lcom/google/android/inputmethod/pinyin/Settings;

    .line 125
    :cond_d
    return-void
.end method

.method public static setAutoCapitalization(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 200
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mAutoCapitalization:Z

    if-eq v0, p0, :cond_c

    .line 201
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/Settings;->mAutoCapitalization:Z

    .line 202
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit16 v0, v0, 0x200

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 204
    :cond_c
    return-void
.end method

.method public static setFaultTolerance(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 222
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mFaultTolerance:Z

    if-eq v0, p0, :cond_c

    .line 223
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/Settings;->mFaultTolerance:Z

    .line 224
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 226
    :cond_c
    return-void
.end method

.method public static setKeySound(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 145
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mKeySound:Z

    if-eq v0, p0, :cond_c

    .line 146
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/Settings;->mKeySound:Z

    .line 147
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 149
    :cond_c
    return-void
.end method

.method public static setLastMode(I)V
    .registers 2
    .parameter "v"

    .prologue
    .line 244
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mLastMode:I

    if-eq v0, p0, :cond_c

    .line 245
    sput p0, Lcom/google/android/inputmethod/pinyin/Settings;->mLastMode:I

    .line 246
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 248
    :cond_c
    return-void
.end method

.method public static setPredictionChinese(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 179
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionChinese:Z

    if-eq v0, p0, :cond_c

    .line 180
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionChinese:Z

    .line 181
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 183
    :cond_c
    return-void
.end method

.method public static setPredictionEnglish(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 186
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionEnglish:Z

    if-eq v0, p0, :cond_c

    .line 187
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionEnglish:Z

    .line 188
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit16 v0, v0, 0x80

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 190
    :cond_c
    return-void
.end method

.method public static setSpellCorrection(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 193
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mSpellCorrection:Z

    if-eq v0, p0, :cond_c

    .line 194
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/Settings;->mSpellCorrection:Z

    .line 195
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit16 v0, v0, 0x100

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 197
    :cond_c
    return-void
.end method

.method public static setStroke(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 211
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mStroke:Z

    if-eq v0, p0, :cond_c

    .line 212
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/Settings;->mStroke:Z

    .line 213
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 215
    :cond_c
    return-void
.end method

.method public static setTradition(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 233
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mTradition:Z

    if-eq v0, p0, :cond_c

    .line 234
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/Settings;->mTradition:Z

    .line 235
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 237
    :cond_c
    return-void
.end method

.method public static setVibrate(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 156
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Settings;->mVibrate:Z

    if-eq v0, p0, :cond_c

    .line 157
    sput-boolean p0, Lcom/google/android/inputmethod/pinyin/Settings;->mVibrate:Z

    .line 158
    sget v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 160
    :cond_c
    return-void
.end method

.method public static writeBack()V
    .registers 3

    .prologue
    .line 83
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    if-lez v1, :cond_92

    .line 84
    sget-object v1, Lcom/google/android/inputmethod/pinyin/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_17

    .line 86
    const-string v1, "V"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/Settings;->mVibrate:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    :cond_17
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_24

    .line 89
    const-string v1, "K"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/Settings;->mKeySound:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    :cond_24
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_31

    .line 92
    const-string v1, "P"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionChinese:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    :cond_31
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit16 v1, v1, 0x80

    if-lez v1, :cond_3e

    .line 95
    const-string v1, "E"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/Settings;->mPredictionEnglish:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    :cond_3e
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit16 v1, v1, 0x100

    if-lez v1, :cond_4b

    .line 98
    const-string v1, "C"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/Settings;->mSpellCorrection:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    :cond_4b
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit16 v1, v1, 0x200

    if-lez v1, :cond_58

    .line 101
    const-string v1, "A"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/Settings;->mAutoCapitalization:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    :cond_58
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_65

    .line 104
    const-string v1, "S"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/Settings;->mStroke:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    :cond_65
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_72

    .line 107
    const-string v1, "F"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/Settings;->mFaultTolerance:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    :cond_72
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit8 v1, v1, 0x20

    if-lez v1, :cond_7f

    .line 110
    const-string v1, "T"

    sget-boolean v2, Lcom/google/android/inputmethod/pinyin/Settings;->mTradition:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    :cond_7f
    sget v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    and-int/lit8 v1, v1, 0x40

    if-lez v1, :cond_8c

    .line 113
    const-string v1, "M"

    sget v2, Lcom/google/android/inputmethod/pinyin/Settings;->mLastMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    :cond_8c
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    const/4 v1, 0x0

    sput v1, Lcom/google/android/inputmethod/pinyin/Settings;->mChanges:I

    .line 118
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_92
    return-void
.end method
