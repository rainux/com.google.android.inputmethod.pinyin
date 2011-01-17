.class public Lcom/google/android/inputmethod/pinyin/SoftKey;
.super Ljava/lang/Object;
.source "SoftKey.java"


# static fields
.field protected static final KEYMASK_BALLOON:I = 0x20000000

.field protected static final KEYMASK_REPEAT:I = 0x10000000

.field public static final MARGIN_TO_CORE_AREA_X:F = 0.02f

.field public static final MARGIN_TO_CORE_AREA_Y:F = 0.045f

.field public static final MAX_MOVE_TOLERANCE_X:I = 0x0

.field public static final MAX_MOVE_TOLERANCE_Y:I = 0x0

.field public static final MAX_SHIFT_X:F = 0.02f

.field public static final MAX_SHIFT_Y:F = 0.06f

.field private static final WEIGHT_ADJUST_SHIFT:F = 0.15f


# instance fields
.field public mBottom:I

.field public mBottomF:F

.field protected mKeyCode:I

.field protected mKeyIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyIconPopup:Landroid/graphics/drawable/Drawable;

.field protected mKeyLabel:Ljava/lang/String;

.field protected mKeyMask:I

.field protected mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

.field public mLeft:I

.field public mLeftF:F

.field public mPopupSkbId:I

.field public mRight:I

.field public mRightF:F

.field public mTop:I

.field public mTopF:F

.field public mXShift:F

.field public mYShift:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    .line 115
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    return-void
.end method


# virtual methods
.method public changeCase(Z)V
    .registers 3
    .parameter "upperCase"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 185
    if-eqz p1, :cond_f

    .line 186
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    .line 190
    :cond_e
    :goto_e
    return-void

    .line 188
    :cond_f
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    goto :goto_e
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColor:I

    return v0
.end method

.method public getColorBalloon()I
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColorBalloon:I

    return v0
.end method

.method public getColorHl()I
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColorHl:I

    return v0
.end method

.method public getCoreAreaForResponse(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 6
    .parameter "rf"

    .prologue
    const v3, 0x3d3851ec

    const v2, 0x3ca3d70a

    .line 255
    if-nez p1, :cond_a

    const/4 v0, 0x0

    .line 261
    :goto_9
    return-object v0

    .line 257
    :cond_a
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 258
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 259
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 260
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    .line 261
    goto :goto_9
.end method

.method public getKeyBg()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyCode()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    return v0
.end method

.method public getKeyHlBg()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyIconPopup()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 170
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 172
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_6
.end method

.method public getKeyLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupResId()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mPopupSkbId:I

    return v0
.end method

.method public height()I
    .registers 3

    .prologue
    .line 244
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hitKey(FF)Z
    .registers 12
    .parameter "fx"
    .parameter "fy"

    .prologue
    const v8, 0x3d75c28f

    const v3, 0x3d3851ec

    const v7, -0x428a3d71

    const v6, -0x435c28f6

    const v5, 0x3ca3d70a

    .line 275
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    add-float/2addr v2, v5

    cmpl-float v2, v2, p1

    if-gtz v2, :cond_2b

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    sub-float/2addr v2, v5

    cmpl-float v2, p1, v2

    if-gez v2, :cond_2b

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, p2

    if-gtz v2, :cond_2b

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_2d

    .line 279
    :cond_2b
    const/4 v2, 0x0

    .line 291
    :goto_2c
    return v2

    .line 282
    :cond_2d
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    add-float v0, v2, v3

    .line 283
    .local v0, centerX:F
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    add-float v1, v2, v3

    .line 285
    .local v1, centerY:F
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    sub-float v3, p1, v0

    const v4, 0x3e19999a

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    .line 286
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    sub-float v3, p2, v1

    const v4, 0x3e19999a

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    .line 287
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_63

    iput v6, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    .line 288
    :cond_63
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6b

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    .line 289
    :cond_6b
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_73

    iput v7, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    .line 290
    :cond_73
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_7b

    iput v8, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    .line 291
    :cond_7b
    const/4 v2, 0x1

    goto :goto_2c
.end method

.method public inCoreAreaForResponse(FF)Z
    .registers 7
    .parameter "fx"
    .parameter "fy"

    .prologue
    const v3, 0x3d3851ec

    const v2, 0x3ca3d70a

    .line 248
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_30

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_30

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_30

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public isKeyCodeKey()Z
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    .line 214
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isUniStrKey()Z
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 224
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isUserDefKey()Z
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    .line 219
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public moveWithinKey(II)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 265
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    sub-int/2addr v0, v1

    if-gt v0, p1, :cond_19

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    sub-int/2addr v0, v1

    if-gt v0, p2, :cond_19

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRight:I

    add-int/lit8 v0, v0, 0x0

    if-le v0, p1, :cond_19

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    add-int/lit8 v0, v0, 0x0

    if-le v0, p2, :cond_19

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method public needBalloon()Z
    .registers 3

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public repeatable()Z
    .registers 3

    .prologue
    .line 232
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setKeyAttribute(ILjava/lang/String;ZZ)V
    .registers 7
    .parameter "keyCode"
    .parameter "label"
    .parameter "repeat"
    .parameter "balloon"

    .prologue
    .line 135
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    .line 136
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    .line 138
    if-eqz p3, :cond_17

    .line 139
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    .line 144
    :goto_d
    if-eqz p4, :cond_20

    .line 145
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    .line 149
    :goto_16
    return-void

    .line 141
    :cond_17
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    goto :goto_d

    .line 147
    :cond_20
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    goto :goto_16
.end method

.method public setKeyDimensions(FFFF)V
    .registers 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 127
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    .line 128
    iput p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    .line 129
    iput p3, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    .line 130
    iput p4, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    .line 131
    return-void
.end method

.method public setKeyType(Lcom/google/android/inputmethod/pinyin/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "keyType"
    .parameter "keyIcon"
    .parameter "keyIconPopup"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    .line 120
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 121
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 122
    return-void
.end method

.method public setPopupSkbId(I)V
    .registers 2
    .parameter "popupSkbId"

    .prologue
    .line 152
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mPopupSkbId:I

    .line 153
    return-void
.end method

.method public setSkbCoreSize(II)V
    .registers 5
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 158
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    .line 159
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRight:I

    .line 160
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    .line 161
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const-string v4, ", "

    const-string v3, "\n"

    .line 296
    const-string v0, "\n"

    .line 297
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  keyMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyMask:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  keyLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    if-nez v2, :cond_e6

    const-string v2, "null"

    :goto_61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  popupResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mPopupSkbId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    return-object v0

    .line 299
    :cond_e6
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyLabel:Ljava/lang/String;

    goto/16 :goto_61
.end method

.method public width()I
    .registers 3

    .prologue
    .line 240
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRight:I

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method
