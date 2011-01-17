.class Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;
.super Landroid/view/View;
.source "SoftKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupHintView"
.end annotation


# static fields
.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."


# instance fields
.field private mAlwaysShowFullLabel:Z

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mPaintLabel:Landroid/graphics/Paint;

.field private mSuspensionPointsWidth:F

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Landroid/content/Context;Z)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "alwaysShowFullLabel"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    .line 586
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 578
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    .line 587
    iput-boolean p3, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mAlwaysShowFullLabel:Z

    .line 588
    return-void
.end method

.method private getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .registers 8
    .parameter "rawLabel"
    .parameter "widthToDraw"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 694
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 695
    .local v0, subLen:I
    if-gt v0, v4, :cond_a

    move-object v2, p1

    .line 702
    :goto_9
    return-object v2

    .line 699
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 700
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 701
    .local v1, width:F
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1b

    if-lt v4, v0, :cond_a

    .line 702
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
    .line 656
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 657
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->getWidth()I

    move-result v4

    .line 658
    .local v4, width:I
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->getHeight()I

    move-result v1

    .line 659
    .local v1, height:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_5b

    .line 660
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int v11, v4, v11

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 662
    .local v6, x0:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int v11, v1, v11

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    div-int/lit8 v9, v11, 0x2

    .line 664
    .local v9, y0:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v11, v4, v11

    sub-int v7, v11, v6

    .line 665
    .local v7, x1:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v1, v11

    sub-int v10, v11, v9

    .line 666
    .local v10, y1:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v11

    .line 667
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v11

    .line 668
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v6, v9, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 669
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 671
    .end local v6           #x0:I
    .end local v7           #x1:I
    .end local v9           #y0:I
    .end local v10           #y1:I
    :cond_5b
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mLabel:Ljava/lang/String;

    if-eqz v11, :cond_ed

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaintLabel:Landroid/graphics/Paint;

    if-eqz v11, :cond_ed

    .line 672
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaintLabel:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mLabel:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 673
    .local v2, labelMeasuredWidth:F
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    int-to-float v12, v4

    sub-float/2addr v12, v2

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float v5, v11, v12

    .line 675
    .local v5, x:F
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mLabel:Ljava/lang/String;

    .line 676
    .local v3, labelToDraw:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpg-float v11, v5, v11

    if-gez v11, :cond_c1

    iget-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mAlwaysShowFullLabel:Z

    if-nez v11, :cond_c1

    .line 677
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mLabel:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int v12, v4, v12

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-direct {p0, v11, v12}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    .line 679
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 680
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v5, v11

    .line 681
    int-to-float v11, v4

    sub-float/2addr v11, v2

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float/2addr v5, v11

    .line 684
    :cond_c1
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v12, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v11, v12

    .line 685
    .local v0, fontHeight:I
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-int v12, v1, v0

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    iget-object v13, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float v8, v11, v12

    .line 687
    .local v8, y:F
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v11, v11

    sub-float/2addr v8, v11

    .line 688
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 690
    .end local v0           #fontHeight:I
    .end local v2           #labelMeasuredWidth:F
    .end local v3           #labelToDraw:Ljava/lang/String;
    .end local v5           #x:F
    .end local v8           #y:F
    :cond_ed
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, -0x8000

    .line 615
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 616
    .local v6, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 617
    .local v1, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 618
    .local v7, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 620
    .local v2, heightSize:I
    const/high16 v9, 0x4000

    if-ne v6, v9, :cond_1a

    .line 621
    invoke-virtual {p0, v7, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->setMeasuredDimension(II)V

    .line 652
    :goto_19
    return-void

    .line 625
    :cond_1a
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v5, v9, v10

    .line 626
    .local v5, measuredWidth:I
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int v4, v9, v10

    .line 627
    .local v4, measuredHeight:I
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_70

    .line 628
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v5, v9

    .line 629
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v4, v9

    .line 634
    :cond_40
    :goto_40
    if-gt v7, v5, :cond_44

    if-ne v6, v11, :cond_45

    .line 635
    :cond_44
    move v5, v7

    .line 638
    :cond_45
    if-gt v2, v4, :cond_49

    if-ne v1, v11, :cond_4a

    .line 640
    :cond_49
    move v4, v2

    .line 643
    :cond_4a
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    iget-object v9, v9, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 645
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 646
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v3, v9, v10

    .line 648
    .local v3, maxWidth:I
    if-le v5, v3, :cond_6c

    .line 649
    move v5, v3

    .line 651
    :cond_6c
    invoke-virtual {p0, v5, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->setMeasuredDimension(II)V

    goto :goto_19

    .line 630
    .end local v0           #d:Landroid/view/Display;
    .end local v3           #maxWidth:I
    .end local v8           #wm:Landroid/view/WindowManager;
    :cond_70
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mLabel:Ljava/lang/String;

    if-eqz v9, :cond_40

    .line 631
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaintLabel:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mLabel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v5, v9

    .line 632
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v9, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    add-int/2addr v4, v9

    goto :goto_40
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 605
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    if-nez p1, :cond_b

    .line 607
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 611
    :goto_a
    return-void

    .line 609
    :cond_b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_a
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 592
    return-void
.end method

.method public setTextConfig(Ljava/lang/String;Landroid/graphics/Paint;)V
    .registers 5
    .parameter "label"
    .parameter "paint"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mLabel:Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_1c

    .line 597
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaintLabel:Landroid/graphics/Paint;

    .line 598
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 599
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mPaintLabel:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->mSuspensionPointsWidth:F

    .line 601
    :cond_1c
    return-void
.end method
