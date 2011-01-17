.class public Lcom/google/android/inputmethod/pinyin/ComposingView;
.super Landroid/view/View;
.source "ComposingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;
    }
.end annotation


# static fields
.field private static final LEFT_RIGHT_MARGIN:I = 0x5


# instance fields
.field private mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

.field private mCursor:Landroid/graphics/drawable/Drawable;

.field mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mFontSize:I

.field private mHlDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mStrColor:I

.field private mStrColorHl:I

.field private mStrColorIdle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mHlDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mCursor:Landroid/graphics/drawable/Drawable;

    .line 116
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mStrColor:I

    .line 117
    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mStrColorHl:I

    .line 118
    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mStrColorIdle:I

    .line 120
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mFontSize:I

    .line 122
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mStrColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 127
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 128
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;F)V
    .registers 9
    .parameter "canvas"
    .parameter "x"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mCursor:Landroid/graphics/drawable/Drawable;

    float-to-int v1, p2

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingTop()I

    move-result v2

    float-to-int v3, p2

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    return-void
.end method

.method private drawForPinyin(Landroid/graphics/Canvas;)V
    .registers 27
    .parameter "canvas"

    .prologue
    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingLeft()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    int-to-float v8, v4

    .line 245
    .local v8, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v9, v4

    .line 247
    .local v9, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mStrColor:I

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCursorPosInCmpsDisplay()I

    move-result v17

    .line 250
    .local v17, cursorPos:I
    move/from16 v7, v17

    .line 251
    .local v7, cmpsPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, cmpsStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getActiveCmpsDisplayLen()I

    move-result v13

    .line 253
    .local v13, activeCmpsLen:I
    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_45

    move v7, v13

    .line 254
    :cond_45
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    add-float/2addr v8, v4

    .line 256
    move/from16 v0, v17

    move v1, v13

    if-gt v0, v1, :cond_80

    .line 257
    sget-object v4, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    move-object v6, v0

    if-ne v4, v6, :cond_71

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/ComposingView;->drawCursor(Landroid/graphics/Canvas;F)V

    .line 260
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v10, p1

    move-object v11, v5

    move v12, v7

    move v14, v8

    move v15, v9

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 263
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    invoke-virtual {v4, v5, v7, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    add-float/2addr v8, v4

    .line 265
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v13, :cond_fb

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mStrColorIdle:I

    move v6, v0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    move/from16 v16, v13

    .line 268
    .local v16, oriPos:I
    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_e4

    .line 269
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-le v0, v1, :cond_b1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    .line 270
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v14, p1

    move-object v15, v5

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    add-float/2addr v8, v4

    .line 273
    sget-object v4, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    move-object v6, v0

    if-ne v4, v6, :cond_e2

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/ComposingView;->drawCursor(Landroid/graphics/Canvas;F)V

    .line 277
    :cond_e2
    move/from16 v16, v17

    .line 279
    :cond_e4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v18, p1

    move-object/from16 v19, v5

    move/from16 v20, v16

    move/from16 v22, v8

    move/from16 v23, v9

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 281
    .end local v16           #oriPos:I
    :cond_fb
    return-void
.end method


# virtual methods
.method public getComposingStatus()Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    return-object v0
.end method

.method public moveCursor(I)Z
    .registers 8
    .parameter "keyCode"

    .prologue
    const/4 v5, -0x2

    const/16 v4, 0x16

    const/16 v3, 0x15

    .line 164
    if-eq p1, v3, :cond_b

    if-eq p1, v4, :cond_b

    .line 165
    const/4 v1, 0x0

    .line 184
    :goto_a
    return v1

    .line 167
    :cond_b
    sget-object v1, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    if-ne v1, v2, :cond_23

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, offset:I
    if-ne p1, v3, :cond_1f

    .line 170
    const/4 v0, -0x1

    .line 172
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v1, v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->moveCursor(I)V

    .line 183
    .end local v0           #offset:I
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->invalidate()V

    .line 184
    const/4 v1, 0x1

    goto :goto_a

    .line 171
    .restart local v0       #offset:I
    :cond_1f
    if-ne p1, v4, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    .line 173
    .end local v0           #offset:I
    :cond_23
    sget-object v1, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    if-ne v1, v2, :cond_1a

    .line 174
    if-eq p1, v3, :cond_2d

    if-ne p1, v4, :cond_1a

    .line 176
    :cond_2d
    sget-object v1, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    .line 178
    invoke-virtual {p0, v5, v5}, Lcom/google/android/inputmethod/pinyin/ComposingView;->measure(II)V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->requestLayout()V

    goto :goto_1a
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    .line 216
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    if-eq v0, v2, :cond_c

    sget-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    if-ne v0, v2, :cond_10

    .line 218
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/ComposingView;->drawForPinyin(Landroid/graphics/Canvas;)V

    .line 233
    :goto_f
    return-void

    .line 223
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    .line 224
    .local v4, x:F
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v5, v0

    .line 226
    .local v5, y:F
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mStrColorHl:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mHlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mHlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, splStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_f
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 195
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 197
    .local v0, height:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-nez v3, :cond_21

    .line 198
    const/4 v2, 0x0

    .line 211
    .local v2, width:F
    :goto_19
    const/high16 v3, 0x3f00

    add-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p0, v3, v0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->setMeasuredDimension(II)V

    .line 212
    return-void

    .line 200
    .end local v2           #width:F
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    int-to-float v2, v3

    .line 204
    .restart local v2       #width:F
    sget-object v3, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    if-ne v3, v4, :cond_4a

    .line 205
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, str:Ljava/lang/String;
    :goto_3d
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_19

    .line 207
    .end local v1           #str:Ljava/lang/String;
    :cond_4a
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #str:Ljava/lang/String;
    goto :goto_3d
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    .line 132
    return-void
.end method

.method public setDecodingInfo(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;)V
    .registers 7
    .parameter "decInfo"
    .parameter "imeStatus"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 143
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    .line 145
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_INPUT:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    if-ne v0, p2, :cond_1b

    .line 146
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    .line 147
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->moveCursorToEdge(Z)V

    .line 158
    :goto_11
    invoke-virtual {p0, v2, v2}, Lcom/google/android/inputmethod/pinyin/ComposingView;->measure(II)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->requestLayout()V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/ComposingView;->invalidate()V

    .line 161
    return-void

    .line 149
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getFixedLen()I

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    if-ne v0, v1, :cond_31

    .line 151
    :cond_27
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    .line 155
    :goto_2b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->moveCursor(I)V

    goto :goto_11

    .line 153
    :cond_31
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ComposingView;->mComposingStatus:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    goto :goto_2b
.end method
