.class Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;
.super Landroid/view/View;
.source "BalloonHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/BalloonHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BalloonView"
.end annotation


# static fields
.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."


# instance fields
.field private mAlwaysShowFullLabel:Z

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabeColor:I

.field private mLabel:Ljava/lang/String;

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mPaintLabel:Landroid/graphics/Paint;

.field private mSuspensionPointsWidth:F

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/BalloonHint;Landroid/content/Context;Z)V
    .registers 7
    .parameter
    .parameter "context"
    .parameter "alwaysShowFullLabel"

    .prologue
    const/4 v2, 0x1

    .line 375
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->this$0:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    .line 376
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 360
    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mLabeColor:I

    .line 367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    .line 377
    iput-boolean p3, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mAlwaysShowFullLabel:Z

    .line 378
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    .line 379
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mLabeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 381
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 382
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 383
    return-void
.end method

.method private getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .registers 8
    .parameter "rawLabel"
    .parameter "widthToDraw"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 488
    .local v0, subLen:I
    if-gt v0, v4, :cond_a

    move-object v2, p1

    .line 493
    :goto_9
    return-object v2

    .line 490
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 491
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 492
    .local v1, width:F
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1b

    if-lt v4, v0, :cond_a

    .line 493
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->getWidth()I

    move-result v4

    .line 452
    .local v4, width:I
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->getHeight()I

    move-result v1

    .line 453
    .local v1, height:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_59

    .line 454
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int v11, v4, v11

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 456
    .local v6, x0:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int v11, v1, v11

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    div-int/lit8 v9, v11, 0x2

    .line 458
    .local v9, y0:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v11, v4, v11

    sub-int v7, v11, v6

    .line 459
    .local v7, x1:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v1, v11

    sub-int v10, v11, v9

    .line 460
    .local v10, y1:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v11

    .line 461
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v11

    .line 462
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v6, v9, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 463
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 483
    .end local v6           #x0:I
    .end local v7           #x1:I
    .end local v9           #y0:I
    .end local v10           #y1:I
    :cond_58
    :goto_58
    return-void

    .line 464
    :cond_59
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    if-eqz v11, :cond_58

    .line 465
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 466
    .local v2, labelMeasuredWidth:F
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    int-to-float v12, v4

    sub-float/2addr v12, v2

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float v5, v11, v12

    .line 468
    .local v5, x:F
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    .line 469
    .local v3, labelToDraw:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpg-float v11, v5, v11

    if-gez v11, :cond_bb

    iget-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mAlwaysShowFullLabel:Z

    if-nez v11, :cond_bb

    .line 470
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int v12, v4, v12

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-direct {p0, v11, v12}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    .line 472
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 473
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v5, v11

    .line 474
    int-to-float v11, v4

    sub-float/2addr v11, v2

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float/2addr v5, v11

    .line 477
    :cond_bb
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v12, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v11, v12

    .line 478
    .local v0, fontHeight:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-int v12, v1, v0

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float v8, v11, v12

    .line 480
    .local v8, y:F
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v11, v11

    sub-float/2addr v8, v11

    .line 481
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_58
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, -0x8000

    .line 413
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 414
    .local v5, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 415
    .local v0, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 416
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 418
    .local v1, heightSize:I
    const/high16 v7, 0x4000

    if-ne v5, v7, :cond_1a

    .line 419
    invoke-virtual {p0, v6, v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->setMeasuredDimension(II)V

    .line 447
    :goto_19
    return-void

    .line 423
    :cond_1a
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v4, v7, v8

    .line 424
    .local v4, measuredWidth:I
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v3, v7, v8

    .line 425
    .local v3, measuredHeight:I
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_64

    .line 426
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 427
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v3, v7

    .line 432
    :cond_40
    :goto_40
    if-gt v6, v4, :cond_44

    if-ne v5, v9, :cond_45

    .line 433
    :cond_44
    move v4, v6

    .line 436
    :cond_45
    if-gt v1, v3, :cond_49

    if-ne v0, v9, :cond_4a

    .line 438
    :cond_49
    move v3, v1

    .line 441
    :cond_4a
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/Environment;->getScreenWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v8

    .line 443
    .local v2, maxWidth:I
    if-le v4, v2, :cond_60

    .line 444
    move v4, v2

    .line 446
    :cond_60
    invoke-virtual {p0, v4, v3}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->setMeasuredDimension(II)V

    goto :goto_19

    .line 428
    .end local v2           #maxWidth:I
    :cond_64
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_40

    .line 429
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 430
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    goto :goto_40
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    if-nez p1, :cond_b

    .line 405
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 409
    :goto_a
    return-void

    .line 407
    :cond_b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_a
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 387
    return-void
.end method

.method public setTextConfig(Ljava/lang/String;FZI)V
    .registers 7
    .parameter "label"
    .parameter "fontSize"
    .parameter "textBold"
    .parameter "textColor"

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 393
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 395
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 396
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 398
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->mSuspensionPointsWidth:F

    .line 399
    return-void
.end method
