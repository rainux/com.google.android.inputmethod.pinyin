.class public Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;
.super Landroid/view/View;
.source "SoftKeyboardView.java"


# static fields
.field private static final NUM_OF_MOVINGKEYS_FOR_DRAW_BORDER:I = 0x3


# instance fields
.field private mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

.field private mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

.field private mDimSkb:Z

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mFunctionKeyTextSize:I

.field private mHintLocationToSkbContainer:[I

.field private mKeyPressFx:F

.field private mKeyPressFy:F

.field private mKeyPressed:Z

.field private mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

.field private mMiscHintLocationToThisView:[I

.field private mMiscToggleHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

.field private mMovedNumOverKeys:I

.field private mMovingNeverHidePopupBalloon:Z

.field private mNormalKeyTextSize:I

.field private mOffsetToSkbContainer:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mRepeatForLongPress:Z

.field private mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

.field private mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

.field private mSoundManager:Lcom/google/android/inputmethod/pinyin/SoundManager;

.field protected mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressed:Z

    .line 83
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    .line 88
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mOffsetToSkbContainer:[I

    .line 93
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    .line 118
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mRepeatForLongPress:Z

    .line 124
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovingNeverHidePopupBalloon:Z

    .line 132
    new-array v0, v2, [J

    fill-array-data v0, :array_4a

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mVibratePattern:[J

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/SoundManager;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoundManager:Lcom/google/android/inputmethod/pinyin/SoundManager;

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 154
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 157
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    .line 158
    return-void

    .line 132
    nop

    :array_4a
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;)Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    return-object v0
.end method

.method private drawBordersForResponse(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    .line 703
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    invoke-virtual {v9}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreWidth()I

    move-result v5

    .line 704
    .local v5, skbWidth:I
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    invoke-virtual {v9}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreHeight()I

    move-result v4

    .line 705
    .local v4, skbHeight:I
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    const v10, -0xff0100

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 707
    const/4 v8, 0x0

    .line 708
    .local v8, y:I
    :goto_15
    if-ge v8, v4, :cond_4f

    .line 709
    int-to-float v9, v8

    int-to-float v10, v4

    div-float v3, v9, v10

    .line 711
    .local v3, fy:F
    const/4 v7, 0x0

    .line 712
    .local v7, x:I
    :goto_1c
    if-ge v7, v5, :cond_4c

    .line 713
    int-to-float v9, v7

    int-to-float v10, v5

    div-float v2, v9, v10

    .line 714
    .local v2, fx:F
    iget v9, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    const/4 v10, 0x3

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float v6, v9, v10

    .line 717
    .local v6, threshold:F
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    invoke-virtual {v9, v2, v3}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->distanceOfNearestTwoKeys(FF)F

    move-result v0

    .line 718
    .local v0, dis:F
    cmpg-float v9, v0, v6

    if-gez v9, :cond_3c

    .line 719
    int-to-float v9, v7

    int-to-float v10, v8

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 722
    :cond_3c
    cmpl-float v9, v0, v6

    if-ltz v9, :cond_49

    .line 723
    sub-float v9, v0, v6

    const v10, 0x40066666

    div-float v1, v9, v10

    .line 724
    .local v1, extraPlus:F
    float-to-int v9, v1

    add-int/2addr v7, v9

    .line 726
    .end local v1           #extraPlus:F
    :cond_49
    add-int/lit8 v7, v7, 0x1

    .line 727
    goto :goto_1c

    .line 728
    .end local v0           #dis:F
    .end local v2           #fx:F
    .end local v6           #threshold:F
    :cond_4c
    add-int/lit8 v8, v8, 0x1

    .line 729
    goto :goto_15

    .line 730
    .end local v3           #fy:F
    .end local v7           #x:I
    :cond_4f
    return-void
.end method

.method private drawKeyCoreAreasForResponse(Landroid/graphics/Canvas;)V
    .registers 20
    .parameter "canvas"

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v2, v0

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/Environment;->getScreenWidth()I

    move-result v15

    .line 670
    .local v15, skbWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/Environment;->getSkbHeight()I

    move-result v14

    .line 672
    .local v14, skbHeight:I
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 674
    .local v11, rf:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getRowNum()I

    move-result v13

    .line 675
    .local v13, rowNum:I
    const/4 v12, 0x0

    .local v12, row:I
    :goto_2c
    if-ge v12, v13, :cond_e7

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v2, v0

    invoke-virtual {v2, v12}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getKeyRowForDisplay(I)Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    move-result-object v10

    .line 677
    .local v10, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    if-nez v10, :cond_3c

    .line 675
    :cond_39
    add-int/lit8 v12, v12, 0x1

    goto :goto_2c

    .line 678
    :cond_3c
    move-object v0, v10

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    move-object/from16 v17, v0

    .line 679
    .local v17, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v9

    .line 680
    .local v9, keyNum:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_46
    if-ge v8, v9, :cond_39

    .line 681
    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 683
    .local v16, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getCoreAreaForResponse(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 684
    iget v2, v11, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_61

    const/4 v2, 0x0

    iput v2, v11, Landroid/graphics/RectF;->left:F

    .line 685
    :cond_61
    iget v2, v11, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6b

    const/4 v2, 0x0

    iput v2, v11, Landroid/graphics/RectF;->top:F

    .line 686
    :cond_6b
    iget v2, v11, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_77

    const/high16 v2, 0x3f80

    iput v2, v11, Landroid/graphics/RectF;->right:F

    .line 687
    :cond_77
    iget v2, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_83

    const/high16 v2, 0x3f80

    iput v2, v11, Landroid/graphics/RectF;->bottom:F

    .line 688
    :cond_83
    iget v2, v11, Landroid/graphics/RectF;->left:F

    int-to-float v3, v15

    mul-float/2addr v2, v3

    iput v2, v11, Landroid/graphics/RectF;->left:F

    .line 689
    iget v2, v11, Landroid/graphics/RectF;->right:F

    int-to-float v3, v15

    mul-float/2addr v2, v3

    iput v2, v11, Landroid/graphics/RectF;->right:F

    .line 690
    iget v2, v11, Landroid/graphics/RectF;->top:F

    int-to-float v3, v14

    mul-float/2addr v2, v3

    iput v2, v11, Landroid/graphics/RectF;->top:F

    .line 691
    iget v2, v11, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v14

    mul-float/2addr v2, v3

    iput v2, v11, Landroid/graphics/RectF;->bottom:F

    .line 693
    iget v3, v11, Landroid/graphics/RectF;->left:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    iget v5, v11, Landroid/graphics/RectF;->right:F

    iget v6, v11, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 694
    iget v3, v11, Landroid/graphics/RectF;->left:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    iget v5, v11, Landroid/graphics/RectF;->left:F

    iget v6, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 695
    iget v3, v11, Landroid/graphics/RectF;->right:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    iget v5, v11, Landroid/graphics/RectF;->right:F

    iget v6, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 696
    iget v3, v11, Landroid/graphics/RectF;->left:F

    iget v4, v11, Landroid/graphics/RectF;->bottom:F

    iget v5, v11, Landroid/graphics/RectF;->right:F

    iget v6, v11, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 680
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_46

    .line 699
    .end local v8           #i:I
    .end local v9           #keyNum:I
    .end local v10           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v16           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .end local v17           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_e7
    return-void
.end method

.method private drawSoftKey(Landroid/graphics/Canvas;Lcom/google/android/inputmethod/pinyin/SoftKey;II)V
    .registers 27
    .parameter "canvas"
    .parameter "softKey"
    .parameter "keyXMargin"
    .parameter "keyYMargin"

    .prologue
    .line 626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_be

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_be

    .line 627
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyHlBg()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 628
    .local v5, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getColorHl()I

    move-result v15

    .line 634
    .local v15, textColor:I
    :goto_1c
    if-eqz v5, :cond_50

    .line 635
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    move/from16 v18, v0

    add-int v18, v18, p3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    move/from16 v19, v0

    add-int v19, v19, p4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRight:I

    move/from16 v20, v0

    sub-int v20, v20, p3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    move/from16 v21, v0

    sub-int v21, v21, p4

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 637
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 640
    :cond_50
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v9

    .line 641
    .local v9, keyLabel:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 642
    .local v8, keyIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_c8

    .line 643
    move-object v7, v8

    .line 644
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->width()I

    move-result v18

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v11, v18, 0x2

    .line 645
    .local v11, marginLeft:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->width()I

    move-result v18

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    sub-int v18, v18, v19

    sub-int v12, v18, v11

    .line 647
    .local v12, marginRight:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->height()I

    move-result v18

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v13, v18, 0x2

    .line 648
    .local v13, marginTop:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->height()I

    move-result v18

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    sub-int v18, v18, v19

    sub-int v10, v18, v13

    .line 650
    .local v10, marginBottom:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    move/from16 v18, v0

    add-int v18, v18, v11

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRight:I

    move/from16 v20, v0

    sub-int v20, v20, v12

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    move/from16 v21, v0

    sub-int v21, v21, v10

    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 653
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 663
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #marginBottom:I
    .end local v11           #marginLeft:I
    .end local v12           #marginRight:I
    .end local v13           #marginTop:I
    :cond_bd
    :goto_bd
    return-void

    .line 630
    .end local v5           #bg:Landroid/graphics/drawable/Drawable;
    .end local v8           #keyIcon:Landroid/graphics/drawable/Drawable;
    .end local v9           #keyLabel:Ljava/lang/String;
    .end local v15           #textColor:I
    :cond_be
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyBg()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 631
    .restart local v5       #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getColor()I

    move-result v15

    .restart local v15       #textColor:I
    goto/16 :goto_1c

    .line 654
    .restart local v8       #keyIcon:Landroid/graphics/drawable/Drawable;
    .restart local v9       #keyLabel:Ljava/lang/String;
    :cond_c8
    if-eqz v9, :cond_bd

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    add-float v16, v18, v19

    .line 658
    .local v16, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 659
    .local v6, fontHeight:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->height()I

    move-result v18

    sub-int v18, v18, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v14, v18, v19

    .line 660
    .local v14, marginY:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3fc0

    div-float v19, v19, v20

    add-float v17, v18, v19

    .line 661
    .local v17, y:F
    const/high16 v18, 0x3f80

    add-float v18, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object v1, v9

    move/from16 v2, v16

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_bd
.end method

.method private showBalloon(Lcom/google/android/inputmethod/pinyin/BalloonHint;[IZ)V
    .registers 12
    .parameter "balloon"
    .parameter "balloonLocationToSkb"
    .parameter "movePress"

    .prologue
    .line 225
    const-wide/16 v1, 0x0

    .line 226
    .local v1, delay:J
    if-eqz p3, :cond_6

    const-wide/16 v1, 0x0

    .line 227
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->needForceDismiss()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 228
    const-wide/16 v3, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    .line 230
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 231
    invoke-virtual {p1, v1, v2, p2}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedShow(J[I)V

    .line 236
    :goto_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 237
    .local v6, b:J
    return-void

    .line 233
    .end local v6           #b:J
    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedUpdate(J[III)V

    goto :goto_1a
.end method

.method private tryPlayKeyDown()V
    .registers 2

    .prologue
    .line 534
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getKeySound()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 535
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoundManager:Lcom/google/android/inputmethod/pinyin/SoundManager;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SoundManager;->playKeyDown()V

    .line 537
    :cond_b
    return-void
.end method

.method private tryVibrate()V
    .registers 4

    .prologue
    .line 523
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getVibrate()Z

    move-result v0

    if-nez v0, :cond_7

    .line 531
    :goto_6
    return-void

    .line 526
    :cond_7
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1b

    .line 527
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mVibrator:Landroid/os/Vibrator;

    .line 530
    :cond_1b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_6
.end method


# virtual methods
.method public dimSoftKeyboard(Z)V
    .registers 2
    .parameter "dimSkb"

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDimSkb:Z

    .line 541
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate()V

    .line 542
    return-void
.end method

.method public getSoftKeyboard()Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 28
    .parameter "canvas"

    .prologue
    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    if-nez v5, :cond_8

    .line 620
    :cond_7
    :goto_7
    return-void

    .line 548
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/inputmethod/pinyin/Environment;->getKeyTextSize(Z)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mNormalKeyTextSize:I

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/inputmethod/pinyin/Environment;->getKeyTextSize(Z)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mFunctionKeyTextSize:I

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getRowNum()I

    move-result v21

    .line 554
    .local v21, rowNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getKeyXMargin()I

    move-result v14

    .line 555
    .local v14, keyXMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getKeyYMargin()I

    move-result v15

    .line 556
    .local v15, keyYMargin:I
    const/16 v20, 0x0

    .local v20, row:I
    :goto_54
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b4

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getKeyRowForDisplay(I)Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    move-result-object v13

    .line 558
    .local v13, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    if-nez v13, :cond_6b

    .line 556
    :cond_68
    add-int/lit8 v20, v20, 0x1

    goto :goto_54

    .line 559
    :cond_6b
    move-object v0, v13

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    move-object/from16 v23, v0

    .line 560
    .local v23, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v12

    .line 561
    .local v12, keyNum:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_75
    if-ge v11, v12, :cond_68

    .line 562
    move-object/from16 v0, v23

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 563
    .local v22, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyTypeId:I

    if-nez v5, :cond_a5

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mNormalKeyTextSize:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 568
    :goto_97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move v3, v14

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->drawSoftKey(Landroid/graphics/Canvas;Lcom/google/android/inputmethod/pinyin/SoftKey;II)V

    .line 561
    add-int/lit8 v11, v11, 0x1

    goto :goto_75

    .line 566
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mFunctionKeyTextSize:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_97

    .line 572
    .end local v11           #i:I
    .end local v12           #keyNum:I
    .end local v13           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v22           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .end local v23           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_b4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDimSkb:Z

    move v5, v0

    if-eqz v5, :cond_db

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, -0x6000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getWidth()I

    move-result v5

    int-to-float v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getHeight()I

    move-result v5

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 577
    :cond_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 579
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressed:Z

    move v5, v0

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    move v5, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_7

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebugKeyRegionAdaptation()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getInstance()Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    move-result-object v16

    .line 585
    .local v16, kpl:Lcom/google/android/inputmethod/pinyin/KeyPressLog;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getPointsNum()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v19, v5, 0x2

    .line 586
    .local v19, pn:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_114
    move v0, v11

    move/from16 v1, v19

    if-ge v0, v1, :cond_16a

    .line 587
    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getPoint(I)Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;

    move-result-object v17

    .line 588
    .local v17, p0:Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
    add-int/lit8 v5, v11, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getPoint(I)Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;

    move-result-object v18

    .line 589
    .local v18, p1:Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->x:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->y:I

    move v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 590
    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->x:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->y:I

    move v5, v0

    int-to-float v7, v5

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->x:I

    move v5, v0

    int-to-float v8, v5

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->y:I

    move v5, v0

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 586
    add-int/lit8 v11, v11, 0x2

    goto :goto_114

    .line 594
    .end local v17           #p0:Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
    .end local v18           #p1:Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
    :cond_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const v6, -0xff0001

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    const/16 v20, 0x0

    :goto_177
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1fa

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getKeyRowForDisplay(I)Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    move-result-object v13

    .line 597
    .restart local v13       #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    if-nez v13, :cond_18e

    .line 595
    :cond_18b
    add-int/lit8 v20, v20, 0x1

    goto :goto_177

    .line 598
    :cond_18e
    move-object v0, v13

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    move-object/from16 v23, v0

    .line 599
    .restart local v23       #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v12

    .line 600
    .restart local v12       #keyNum:I
    const/4 v11, 0x0

    :goto_198
    if-ge v11, v12, :cond_18b

    .line 601
    move-object/from16 v0, v23

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 602
    .restart local v22       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    move v5, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    move v6, v0

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    move v6, v0

    add-float v24, v5, v6

    .line 604
    .local v24, x:F
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    move v5, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    move v6, v0

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    move v6, v0

    add-float v25, v5, v6

    .line 606
    .local v25, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v24, v24, v5

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v25, v25, v5

    .line 608
    const/high16 v5, 0x4040

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 600
    add-int/lit8 v11, v11, 0x1

    goto :goto_198

    .line 613
    .end local v12           #keyNum:I
    .end local v13           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v22           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .end local v23           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_1fa
    invoke-direct/range {p0 .. p1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->drawKeyCoreAreasForResponse(Landroid/graphics/Canvas;)V

    .line 616
    invoke-direct/range {p0 .. p1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->drawBordersForResponse(Landroid/graphics/Canvas;)V

    .line 617
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    goto/16 :goto_7
.end method

.method public onKeyMove(II)Lcom/google/android/inputmethod/pinyin/SoftKey;
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 482
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 518
    :goto_8
    return-object v0

    .line 484
    :cond_9
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->moveWithinKey(II)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 486
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    goto :goto_8

    .line 490
    :cond_20
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v2, v2, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v3, v3, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRight:I

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v4, v4, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 493
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mRepeatForLongPress:Z

    if-eqz v0, :cond_7c

    .line 494
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovingNeverHidePopupBalloon:Z

    if-eqz v0, :cond_44

    .line 495
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->onKeyPress(IILcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;Z)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v0

    goto :goto_8

    .line 498
    :cond_44
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    if-eqz v0, :cond_6a

    .line 499
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    .line 508
    :goto_4d
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SoftKey;->needBalloon()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 509
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    .line 512
    :cond_5a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    if-eqz v0, :cond_63

    .line 513
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->removeTimer()Z

    .line 515
    :cond_63
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->onKeyPress(IILcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;Z)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v0

    goto :goto_8

    .line 501
    :cond_6a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebugKeyRegionAdaptation()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 502
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate()V

    goto :goto_4d

    .line 504
    :cond_76
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_4d

    .line 518
    :cond_7c
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->onKeyPress(IILcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;Z)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v0

    goto :goto_8
.end method

.method public onKeyPress(IILcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;Z)Lcom/google/android/inputmethod/pinyin/SoftKey;
    .registers 26
    .parameter "x"
    .parameter "y"
    .parameter "longPressTimer"
    .parameter "movePress"

    .prologue
    .line 267
    const/16 v18, 0x0

    .line 268
    .local v18, moveWithinPreviousKey:Z
    move/from16 v0, p1

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressFx:F

    .line 269
    move/from16 v0, p2

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressFy:F

    .line 271
    if-eqz p4, :cond_6d

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressFx:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressFy:F

    move v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mapToKey(FF)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v19

    .line 274
    .local v19, newKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    move-object/from16 v0, v19

    move-object v1, v4

    if-ne v0, v1, :cond_5a

    .line 275
    const/16 v18, 0x1

    .line 293
    .end local v19           #newKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_4b
    :goto_4b
    if-nez v18, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    if-nez v4, :cond_ca

    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    .line 397
    :goto_59
    return-object v4

    .line 277
    .restart local v19       #newKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_5a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    .line 278
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    goto :goto_4b

    .line 281
    .end local v19           #newKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_6d
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressFx:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressFy:F

    move v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mapToKey(FF)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebugKeyRegionAdaptation()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 285
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getInstance()Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    move-result-object v17

    .line 286
    .local v17, kpl:Lcom/google/android/inputmethod/pinyin/KeyPressLog;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getPointsNum()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_c0

    .line 287
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getPointsNum()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getPoint(I)Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;

    move-result-object v20

    .line 288
    .local v20, p:Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->x:I

    move v4, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->y:I

    move v5, v0

    move-object/from16 v0, v17

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->putPoint(II)V

    .line 290
    .end local v20           #p:Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
    :cond_c0
    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->putPoint(II)V

    goto :goto_4b

    .line 294
    .end local v17           #kpl:Lcom/google/android/inputmethod/pinyin/KeyPressLog;
    :cond_ca
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressed:Z

    .line 296
    if-nez p4, :cond_d8

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->tryPlayKeyDown()V

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->tryVibrate()V

    .line 301
    :cond_d8
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    .line 303
    if-nez p4, :cond_2f0

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getPopupResId()I

    move-result v4

    if-gtz v4, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->repeatable()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 305
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->startTimer()V

    .line 315
    :cond_fe
    :goto_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    if-eqz v4, :cond_31a

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyHlBg()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 317
    .local v14, keyHlBg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    invoke-virtual {v4, v14}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getKeyXMargin()I

    move-result v15

    .line 321
    .local v15, keyXMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getKeyYMargin()I

    move-result v16

    .line 322
    .local v16, keyYMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->width()I

    move-result v4

    mul-int/lit8 v5, v15, 0x2

    sub-int v9, v4, v5

    .line 323
    .local v9, desired_width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->height()I

    move-result v4

    mul-int/lit8 v5, v16, 0x2

    sub-int v10, v4, v5

    .line 324
    .local v10, desired_height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v5, v5, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyTypeId:I

    if-eqz v5, :cond_2fa

    const/4 v5, 0x1

    :goto_153
    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/Environment;->getKeyTextSize(Z)I

    move-result v4

    int-to-float v6, v4

    .line 327
    .local v6, textSize:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 328
    .local v12, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_2fd

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    invoke-virtual {v4, v12, v9, v10}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V

    .line 337
    :goto_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingLeft()I

    move-result v6

    .end local v6           #textSize:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v7, v0

    iget v7, v7, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/inputmethod/pinyin/SoftKey;->width()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v6, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mOffsetToSkbContainer:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingTop()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v7, v0

    iget v7, v7, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    sub-int v7, v7, v16

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v4, v0

    const/4 v5, 0x1

    aget v6, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mOffsetToSkbContainer:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->showBalloon(Lcom/google/android/inputmethod/pinyin/BalloonHint;[IZ)V

    .line 357
    .end local v9           #desired_width:I
    .end local v10           #desired_height:I
    .end local v12           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #keyHlBg:Landroid/graphics/drawable/Drawable;
    .end local v15           #keyXMargin:I
    .end local v16           #keyYMargin:I
    :goto_1ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->needBalloon()Z

    move-result v4

    if-eqz v4, :cond_383

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 359
    .local v11, balloonBg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/Environment;->getKeyBalloonWidthPlus()I

    move-result v5

    add-int v9, v4, v5

    .line 362
    .restart local v9       #desired_width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/Environment;->getKeyBalloonHeightPlus()I

    move-result v5

    add-int v10, v4, v5

    .line 364
    .restart local v10       #desired_height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    iget v5, v5, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyTypeId:I

    if-eqz v5, :cond_35b

    const/4 v5, 0x1

    :goto_243
    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/Environment;->getBalloonTextSize(Z)I

    move-result v4

    int-to-float v6, v4

    .line 367
    .restart local v6       #textSize:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 368
    .local v13, iconPopup:Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_35e

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    invoke-virtual {v4, v13, v9, v10}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V

    .line 379
    :goto_25b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingLeft()I

    move-result v6

    .end local v6           #textSize:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v7, v0

    iget v7, v7, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/inputmethod/pinyin/SoftKey;->width()I

    move-result v8

    sub-int/2addr v7, v8

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v6, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mOffsetToSkbContainer:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingTop()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v7, v0

    iget v7, v7, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x5

    aput v6, v4, v5

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v4, v0

    const/4 v5, 0x1

    aget v6, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mOffsetToSkbContainer:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->showBalloon(Lcom/google/android/inputmethod/pinyin/BalloonHint;[IZ)V

    .line 396
    .end local v9           #desired_width:I
    .end local v10           #desired_height:I
    .end local v11           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v13           #iconPopup:Landroid/graphics/drawable/Drawable;
    :goto_2df
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mRepeatForLongPress:Z

    move v4, v0

    if-eqz v4, :cond_2e9

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->startTimer()V

    .line 397
    :cond_2e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v4, v0

    goto/16 :goto_59

    .line 308
    :cond_2f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->removeTimer()Z

    goto/16 :goto_fe

    .line 324
    .restart local v9       #desired_width:I
    .restart local v10       #desired_height:I
    .restart local v14       #keyHlBg:Landroid/graphics/drawable/Drawable;
    .restart local v15       #keyXMargin:I
    .restart local v16       #keyYMargin:I
    :cond_2fa
    const/4 v5, 0x0

    goto/16 :goto_153

    .line 332
    .restart local v6       #textSize:F
    .restart local v12       #icon:Landroid/graphics/drawable/Drawable;
    :cond_2fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getColorHl()I

    move-result v8

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    goto/16 :goto_16b

    .line 347
    .end local v6           #textSize:F
    .end local v9           #desired_width:I
    .end local v10           #desired_height:I
    .end local v12           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #keyHlBg:Landroid/graphics/drawable/Drawable;
    .end local v15           #keyXMargin:I
    .end local v16           #keyYMargin:I
    :cond_31a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v6, v0

    iget v6, v6, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v7, v0

    iget v7, v7, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v8, v0

    iget v8, v8, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebugKeyRegionAdaptation()Z

    move-result v4

    if-eqz v4, :cond_34e

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate()V

    goto/16 :goto_1ee

    .line 352
    :cond_34e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1ee

    .line 364
    .restart local v9       #desired_width:I
    .restart local v10       #desired_height:I
    .restart local v11       #balloonBg:Landroid/graphics/drawable/Drawable;
    :cond_35b
    const/4 v5, 0x0

    goto/16 :goto_243

    .line 372
    .restart local v6       #textSize:F
    .restart local v13       #iconPopup:Landroid/graphics/drawable/Drawable;
    :cond_35e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/SoftKey;->needBalloon()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getColorBalloon()I

    move-result v8

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    goto/16 :goto_25b

    .line 393
    .end local v6           #textSize:F
    .end local v9           #desired_width:I
    .end local v10           #desired_height:I
    .end local v11           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v13           #iconPopup:Landroid/graphics/drawable/Drawable;
    :cond_383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    goto/16 :goto_2df
.end method

.method public onKeyRelease(II)Lcom/google/android/inputmethod/pinyin/SoftKey;
    .registers 16
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v11, 0xc8

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 401
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebugKeyRegionAdaptation()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 402
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->getInstance()Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    move-result-object v1

    .line 403
    .local v1, kpl:Lcom/google/android/inputmethod/pinyin/KeyPressLog;
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    if-lt v5, v6, :cond_8e

    .line 404
    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->deleteLastPoint()V

    .line 405
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    sub-int/2addr v5, v6

    const/16 v6, 0x14

    if-le v5, v6, :cond_6d

    .line 406
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 409
    const/high16 v5, 0x104

    invoke-virtual {v0, v5, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const-string v6, "Reset Key Shift"

    aput-object v6, v5, v8

    const-string v6, "Clear History"

    aput-object v6, v5, v7

    new-instance v6, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView$1;

    invoke-direct {v6, p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView$1;-><init>(Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    const-string v5, "Key Region Operation"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 429
    .local v3, optionDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 430
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 431
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 432
    const/16 v5, 0x3eb

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 433
    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 434
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 435
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 438
    const/4 v5, 0x4

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    .line 447
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #kpl:Lcom/google/android/inputmethod/pinyin/KeyPressLog;
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #optionDialog:Landroid/app/AlertDialog;
    .end local v4           #window:Landroid/view/Window;
    :cond_6d
    :goto_6d
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    if-eqz v5, :cond_86

    iget v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovedNumOverKeys:I

    if-nez v5, :cond_86

    .line 448
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/Environment;->doKeyRegionAdaptation()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 449
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressFx:F

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressFy:F

    invoke-virtual {v5, v6, v7}, Lcom/google/android/inputmethod/pinyin/SoftKey;->hitKey(FF)Z

    .line 453
    :cond_86
    iput-boolean v8, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressed:Z

    .line 454
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    if-nez v5, :cond_92

    move-object v5, v10

    .line 478
    :goto_8d
    return-object v5

    .line 441
    .restart local v1       #kpl:Lcom/google/android/inputmethod/pinyin/KeyPressLog;
    :cond_8e
    invoke-virtual {v1, p1, p2}, Lcom/google/android/inputmethod/pinyin/KeyPressLog;->putPoint(II)V

    goto :goto_6d

    .line 456
    .end local v1           #kpl:Lcom/google/android/inputmethod/pinyin/KeyPressLog;
    :cond_92
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->removeTimer()Z

    .line 458
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    if-eqz v5, :cond_c4

    .line 459
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v5, v11, v12}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    .line 470
    :goto_a0
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/SoftKey;->needBalloon()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 471
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v5, v11, v12}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    .line 474
    :cond_ad
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingLeft()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingTop()I

    move-result v7

    sub-int v7, p2, v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/inputmethod/pinyin/SoftKey;->moveWithinKey(II)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 476
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    goto :goto_8d

    .line 461
    :cond_c4
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v6, v6, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v7, v7, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v8, v8, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRight:I

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v9, v9, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 463
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v5}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebugKeyRegionAdaptation()Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 464
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate()V

    goto :goto_a0

    .line 466
    :cond_e5
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_a0

    :cond_eb
    move-object v5, v10

    .line 478
    goto :goto_8d
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, measuredWidth:I
    const/4 v0, 0x0

    .line 194
    .local v0, measuredHeight:I
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    if-eqz v2, :cond_26

    .line 195
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreWidth()I

    move-result v1

    .line 196
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreHeight()I

    move-result v0

    .line 197
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 198
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 200
    :cond_26
    invoke-virtual {p0, v1, v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->setMeasuredDimension(II)V

    .line 201
    return-void
.end method

.method public resetKeyPress(J)V
    .registers 8
    .parameter "balloonDelay"

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressed:Z

    if-nez v0, :cond_5

    .line 260
    :goto_4
    return-void

    .line 241
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mKeyPressed:Z

    .line 242
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    if-eqz v0, :cond_17

    .line 243
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    .line 259
    :goto_11
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    goto :goto_4

    .line 245
    :cond_17
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    if-eqz v0, :cond_4a

    .line 246
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 247
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v1, v1, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeft:I

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v2, v2, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTop:I

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v3, v3, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRight:I

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    iget v4, v4, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 250
    :cond_38
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mEnv:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->needDebugKeyRegionAdaptation()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 251
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate()V

    goto :goto_11

    .line 253
    :cond_44
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_11

    .line 256
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate()V

    goto :goto_11
.end method

.method public resizeKeyboard(II)V
    .registers 4
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setSkbCoreSize(II)V

    .line 176
    return-void
.end method

.method public setBalloonHint(Lcom/google/android/inputmethod/pinyin/BalloonHint;Lcom/google/android/inputmethod/pinyin/BalloonHint;Z)V
    .registers 4
    .parameter "balloonOnKey"
    .parameter "balloonPopup"
    .parameter "movingNeverHidePopup"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    .line 181
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    .line 182
    iput-boolean p3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMovingNeverHidePopupBalloon:Z

    .line 183
    return-void
.end method

.method public setOffsetToSkbContainer([I)V
    .registers 6
    .parameter "offsetToSkbContainer"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mOffsetToSkbContainer:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 187
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mOffsetToSkbContainer:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 188
    return-void
.end method

.method public setSoftKeyboard(Lcom/google/android/inputmethod/pinyin/SoftKeyboard;)Z
    .registers 4
    .parameter "softSkb"

    .prologue
    .line 161
    if-nez p1, :cond_4

    .line 162
    const/4 v1, 0x0

    .line 167
    :goto_3
    return v1

    .line 164
    :cond_4
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    .line 165
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_f
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public showMiscToggleBalloon(I)V
    .registers 11
    .parameter "miscToggleStateId"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscToggleHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    if-nez v0, :cond_18

    .line 205
    new-instance v0, Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/BalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscToggleHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscHintLocationToThisView:[I

    .line 210
    :cond_18
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscToggleHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    .line 211
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscToggleHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->removeTimer()V

    .line 213
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscHintLocationToThisView:[I

    aput v2, v0, v2

    .line 214
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscHintLocationToThisView:[I

    const/16 v1, -0x32

    aput v1, v0, v3

    .line 215
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscToggleHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41c0

    const/high16 v4, -0x100

    const/16 v5, 0x3c

    const/16 v6, 0x32

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    .line 217
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscToggleHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mSoftKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscToggleHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscHintLocationToThisView:[I

    invoke-virtual {v0, v7, v8, v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedShow(J[I)V

    .line 220
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->mMiscToggleHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    .line 221
    return-void
.end method
