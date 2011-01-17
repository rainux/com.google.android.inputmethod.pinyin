.class public Lcom/google/android/inputmethod/pinyin/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field private static final CANDIDATES_AREA_HEIGHT_RATIO_LANDSCAPE:F = 0.125f

.field private static final CANDIDATES_AREA_HEIGHT_RATIO_PORTRAIT:F = 0.084f

.field private static final FUNCTION_BALLOON_TEXT_SIZE_RATIO:F = 0.068f

.field private static final KEY_BALLOON_HEIGHT_PLUS_RATIO:F = 0.0f

.field private static final KEY_BALLOON_WIDTH_PLUS_RATIO:F = 0.05f

.field private static final NORMAL_BALLOON_TEXT_SIZE_RATIO:F = 0.12f

.field private static mInstance:Lcom/google/android/inputmethod/pinyin/Environment;


# instance fields
.field private mCandidatesAreaHeight:I

.field private mConfig:Landroid/content/res/Configuration;

.field private mDebug:Z

.field private mDebugKeyRegionAdaptation:Z

.field private mDoKeyRegionAdaptation:Z

.field private mFunctionBalloonTextSize:I

.field private mFunctionKeyTextSize:I

.field private mKeyBalloonHeightPlus:I

.field private mKeyBalloonWidthPlus:I

.field private mKeyHeight:I

.field private mNormalBalloonTextSize:I

.field private mNormalKeyTextSize:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSkbHeight:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mConfig:Landroid/content/res/Configuration;

    .line 86
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mDebug:Z

    .line 88
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mDoKeyRegionAdaptation:Z

    .line 89
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mDebugKeyRegionAdaptation:Z

    .line 92
    return-void
.end method

.method public static getInstance()Lcom/google/android/inputmethod/pinyin/Environment;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Environment;->mInstance:Lcom/google/android/inputmethod/pinyin/Environment;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/Environment;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/Environment;->mInstance:Lcom/google/android/inputmethod/pinyin/Environment;

    .line 98
    :cond_b
    sget-object v0, Lcom/google/android/inputmethod/pinyin/Environment;->mInstance:Lcom/google/android/inputmethod/pinyin/Environment;

    return-object v0
.end method


# virtual methods
.method public doKeyRegionAdaptation()Z
    .registers 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mDoKeyRegionAdaptation:Z

    return v0
.end method

.method public getBalloonTextSize(Z)I
    .registers 3
    .parameter "isFunctionKey"

    .prologue
    .line 188
    if-eqz p1, :cond_5

    .line 189
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mFunctionBalloonTextSize:I

    .line 191
    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mNormalBalloonTextSize:I

    goto :goto_4
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getHeightForCandidates()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mCandidatesAreaHeight:I

    return v0
.end method

.method public getKeyBalloonHeightPlus()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mKeyBalloonHeightPlus:I

    return v0
.end method

.method public getKeyBalloonWidthPlus()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mKeyBalloonWidthPlus:I

    return v0
.end method

.method public getKeyHeight()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mKeyHeight:I

    return v0
.end method

.method public getKeyTextSize(Z)I
    .registers 3
    .parameter "isFunctionKey"

    .prologue
    .line 180
    if-eqz p1, :cond_5

    .line 181
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mFunctionKeyTextSize:I

    .line 183
    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mNormalKeyTextSize:I

    goto :goto_4
.end method

.method public getKeyXMarginFactor()F
    .registers 2

    .prologue
    .line 153
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getKeyYMarginFactor()F
    .registers 3

    .prologue
    .line 157
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_b

    .line 158
    const v0, 0x3f333333

    .line 160
    :goto_a
    return v0

    :cond_b
    const/high16 v0, 0x3f80

    goto :goto_a
.end method

.method public getScreenHeight()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenWidth:I

    return v0
.end method

.method public getSkbHeight()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mSkbHeight:I

    return v0
.end method

.method public hasHardKeyboard()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 196
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_e

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 198
    :cond_e
    const/4 v0, 0x0

    .line 200
    :goto_f
    return v0

    :cond_10
    move v0, v2

    goto :goto_f
.end method

.method public needDebug()Z
    .registers 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mDebug:Z

    return v0
.end method

.method public needDebugKeyRegionAdaptation()Z
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mDebugKeyRegionAdaptation:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .registers 9
    .parameter "newConfig"
    .parameter "context"

    .prologue
    const v5, 0x461c4000

    .line 102
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_86

    .line 103
    const-string v3, "window"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 105
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 106
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenWidth:I

    .line 107
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenHeight:I

    .line 110
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenHeight:I

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenWidth:I

    if-le v3, v4, :cond_8c

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mSkbHeight:I

    .line 113
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mSkbHeight:I

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mKeyHeight:I

    .line 114
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenHeight:I

    int-to-float v3, v3

    const v4, 0x3dac0831

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mCandidatesAreaHeight:I

    .line 116
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenWidth:I

    .line 125
    .local v1, scale:I
    :goto_4e
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mNormalKeyTextSize:I

    .line 126
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mFunctionKeyTextSize:I

    .line 127
    int-to-float v3, v1

    const v4, 0x3df5c28f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mNormalBalloonTextSize:I

    .line 128
    int-to-float v3, v1

    const v4, 0x3d8b4396

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mFunctionBalloonTextSize:I

    .line 129
    int-to-float v3, v1

    const v4, 0x3d4ccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mKeyBalloonWidthPlus:I

    .line 130
    int-to-float v3, v1

    const/4 v4, 0x0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mKeyBalloonHeightPlus:I

    .line 133
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #scale:I
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_86
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 134
    return-void

    .line 118
    .restart local v0       #d:Landroid/view/Display;
    .restart local v2       #wm:Landroid/view/WindowManager;
    :cond_8c
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mSkbHeight:I

    .line 120
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mSkbHeight:I

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mKeyHeight:I

    .line 121
    iget v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x3e00

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mCandidatesAreaHeight:I

    .line 123
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/Environment;->mScreenHeight:I

    .restart local v1       #scale:I
    goto :goto_4e
.end method
