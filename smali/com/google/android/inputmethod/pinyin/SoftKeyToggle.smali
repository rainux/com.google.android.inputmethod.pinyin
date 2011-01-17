.class public Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;
.super Lcom/google/android/inputmethod/pinyin/SoftKey;
.source "SoftKeyToggle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    }
.end annotation


# static fields
.field private static final KEYMASK_TOGGLE_STATE:I = 0xff


# instance fields
.field private mToggleState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKey;-><init>()V

    .line 255
    return-void
.end method

.method private getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    .registers 4

    .prologue
    .line 244
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v1, v2, 0xff

    .line 245
    .local v1, stateId:I
    if-nez v1, :cond_8

    const/4 v2, 0x0

    .line 252
    :goto_7
    return-object v2

    .line 247
    :cond_8
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mToggleState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    .line 249
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    :goto_a
    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->access$000(Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v1, :cond_17

    .line 250
    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mNextState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    goto :goto_a

    :cond_17
    move-object v2, v0

    .line 252
    goto :goto_7
.end method


# virtual methods
.method public changeCase(Z)V
    .registers 4
    .parameter "lowerCase"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 225
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_14

    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 226
    if-eqz p1, :cond_15

    .line 227
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 231
    :cond_14
    :goto_14
    return-void

    .line 229
    :cond_15
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    goto :goto_14
.end method

.method public createToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    .registers 2

    .prologue
    .line 234
    new-instance v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;-><init>(Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;)V

    return-object v0
.end method

.method public disableAllToggleStates()Z
    .registers 3

    .prologue
    .line 88
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v0, v1, 0xff

    .line 89
    .local v0, oldStateId:I
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    .line 90
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public disableToggleState(IZ)Z
    .registers 7
    .parameter "stateId"
    .parameter "resetIfNotFound"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v0, v1, 0xff

    .line 74
    .local v0, oldStateId:I
    if-ne v0, p1, :cond_14

    .line 75
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    .line 76
    if-eqz p1, :cond_12

    move v1, v3

    .line 83
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 76
    goto :goto_11

    .line 79
    :cond_14
    if-eqz p2, :cond_22

    .line 80
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    .line 81
    if-eqz v0, :cond_20

    move v1, v3

    goto :goto_11

    :cond_20
    move v1, v2

    goto :goto_11

    :cond_22
    move v1, v2

    .line 83
    goto :goto_11
.end method

.method public enableToggleState(IZ)Z
    .registers 7
    .parameter "stateId"
    .parameter "resetIfNotFound"

    .prologue
    const/4 v3, 0x1

    .line 48
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v0, v1, 0xff

    .line 49
    .local v0, oldStateId:I
    if-ne v0, p1, :cond_9

    const/4 v1, 0x0

    .line 64
    :goto_8
    return v1

    .line 51
    :cond_9
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    .line 52
    if-lez p1, :cond_33

    .line 53
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v2, p1, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    .line 54
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v1

    if-nez v1, :cond_31

    .line 55
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    .line 56
    if-nez p2, :cond_2f

    if-lez v0, :cond_2f

    .line 57
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v2, v0, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    :cond_2f
    move v1, p2

    .line 59
    goto :goto_8

    :cond_31
    move v1, v3

    .line 61
    goto :goto_8

    :cond_33
    move v1, v3

    .line 64
    goto :goto_8
.end method

.method public getColor()I
    .registers 3

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 148
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    if-eqz v1, :cond_f

    .line 149
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColor:I

    .line 151
    :goto_e
    return v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColor:I

    goto :goto_e
.end method

.method public getColorBalloon()I
    .registers 3

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 166
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    if-eqz v1, :cond_f

    .line 167
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColorBalloon:I

    .line 169
    :goto_e
    return v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColorBalloon:I

    goto :goto_e
.end method

.method public getColorHl()I
    .registers 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 157
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    if-eqz v1, :cond_f

    .line 158
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColorHl:I

    .line 160
    :goto_e
    return v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColorHl:I

    goto :goto_e
.end method

.method public getKeyBg()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 130
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    if-eqz v1, :cond_f

    .line 131
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget-object v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    .line 133
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget-object v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method public getKeyCode()I
    .registers 3

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 116
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_9

    iget v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyCode:I

    .line 117
    :goto_8
    return v1

    :cond_9
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyCode:I

    goto :goto_8
.end method

.method public getKeyHlBg()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 139
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    if-eqz v1, :cond_f

    .line 140
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget-object v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    .line 142
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget-object v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method public getKeyIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 96
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    :goto_8
    return-object v1

    :cond_9
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_8
.end method

.method public getKeyIconPopup()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 103
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_10

    .line 104
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 105
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 110
    :goto_c
    return-object v1

    .line 107
    :cond_d
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 110
    :cond_10
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_c
.end method

.method public getKeyLabel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 123
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 124
    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyLabel:Ljava/lang/String;

    goto :goto_8
.end method

.method public getToggleStateId()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mKeyMask:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public isKeyCodeKey()Z
    .registers 3

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 175
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_e

    .line 176
    iget v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyCode:I

    if-lez v1, :cond_c

    const/4 v1, 0x1

    .line 179
    :goto_b
    return v1

    .line 177
    :cond_c
    const/4 v1, 0x0

    goto :goto_b

    .line 179
    :cond_e
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/SoftKey;->isKeyCodeKey()Z

    move-result v1

    goto :goto_b
.end method

.method public isUniStrKey()Z
    .registers 3

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 195
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_12

    .line 196
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyCode:I

    if-nez v1, :cond_10

    .line 197
    const/4 v1, 0x1

    .line 201
    :goto_f
    return v1

    .line 199
    :cond_10
    const/4 v1, 0x0

    goto :goto_f

    .line 201
    :cond_12
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/SoftKey;->isUniStrKey()Z

    move-result v1

    goto :goto_f
.end method

.method public isUserDefKey()Z
    .registers 3

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 185
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_e

    .line 186
    iget v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyCode:I

    if-gez v1, :cond_c

    const/4 v1, 0x1

    .line 189
    :goto_b
    return v1

    .line 187
    :cond_c
    const/4 v1, 0x0

    goto :goto_b

    .line 189
    :cond_e
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/SoftKey;->isUserDefKey()Z

    move-result v1

    goto :goto_b
.end method

.method public needBalloon()Z
    .registers 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 207
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_13

    .line 208
    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->access$000(Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;)I

    move-result v1

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    .line 210
    :goto_10
    return v1

    .line 208
    :cond_11
    const/4 v1, 0x0

    goto :goto_10

    .line 210
    :cond_13
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/SoftKey;->needBalloon()Z

    move-result v1

    goto :goto_10
.end method

.method public repeatable()Z
    .registers 4

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->getToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v0

    .line 216
    .local v0, state:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-eqz v0, :cond_13

    .line 217
    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->access$000(Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;)I

    move-result v1

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    .line 219
    :goto_10
    return v1

    .line 217
    :cond_11
    const/4 v1, 0x0

    goto :goto_10

    .line 219
    :cond_13
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/SoftKey;->repeatable()Z

    move-result v1

    goto :goto_10
.end method

.method public setToggleStates(Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;)Z
    .registers 3
    .parameter "rootState"

    .prologue
    .line 238
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 240
    :goto_3
    return v0

    .line 239
    :cond_4
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->mToggleState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    .line 240
    const/4 v0, 0x1

    goto :goto_3
.end method
