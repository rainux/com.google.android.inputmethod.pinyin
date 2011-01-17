.class public Lcom/google/android/inputmethod/pinyin/CandidateView;
.super Landroid/view/View;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CANDIDATE_MODE_CHINESE:I = 0x1

.field public static final CANDIDATE_MODE_LATIN:I = 0x0

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."


# instance fields
.field private mActiveCandInPage:I

.field private mActiveCandidateColor:I

.field private mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

.field private mActiveCellRect:Landroid/graphics/RectF;

.field private mArrowUpdater:Lcom/google/android/inputmethod/pinyin/ArrowUpdater;

.field private mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

.field private mCandRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateMargin:F

.field private mCandidateMarginExtra:F

.field private mCandidateMode:I

.field private mCandidateTextSize:I

.field private mCandidatesPaint:Landroid/graphics/Paint;

.field private mContentHeight:I

.field private mContentWidth:I

.field private mCorrectionIndex:I

.field private mCvListener:Lcom/google/android/inputmethod/pinyin/CandidateViewListener;

.field private mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

.field private mEnableActiveHighlight:Z

.field private mFaceBold:Landroid/graphics/Typeface;

.field private mFaceNormal:Landroid/graphics/Typeface;

.field private mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

.field private mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

.field private mFootnotePaint:Landroid/graphics/Paint;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHintPositionToInputView:[I

.field private mImeCandidateColor:I

.field private mImeCandidateTextSize:I

.field private mLocationTmp:[I

.field private mMinItemWidth:F

.field private mNormalCandidateColor:I

.field private mPageNo:I

.field private mPageNoCalculated:I

.field private mRecommendedCandidateColor:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mShowFootnote:Z

.field private mSuspensionPointsWidth:F

.field private mTimer:Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

.field private mUpdateArrowStatusWhenDraw:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 233
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mShowFootnote:Z

    .line 80
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mHintPositionToInputView:[I

    .line 102
    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mUpdateArrowStatusWhenDraw:Z

    .line 119
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mEnableActiveHighlight:Z

    .line 124
    iput v6, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNoCalculated:I

    .line 188
    iput v6, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCorrectionIndex:I

    .line 190
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFaceNormal:Landroid/graphics/Typeface;

    .line 191
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFaceBold:Landroid/graphics/Typeface;

    .line 224
    new-instance v2, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    invoke-direct {v2, p0}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;-><init>(Lcom/google/android/inputmethod/pinyin/CandidateView;)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mTimer:Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    .line 228
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mLocationTmp:[I

    .line 230
    iput v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMode:I

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 237
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 238
    .local v0, conf:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_3e

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v5, :cond_40

    .line 240
    :cond_3e
    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mShowFootnote:Z

    .line 243
    :cond_40
    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 245
    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMargin:F

    .line 247
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mImeCandidateColor:I

    .line 248
    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mRecommendedCandidateColor:I

    .line 249
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mImeCandidateColor:I

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mNormalCandidateColor:I

    .line 250
    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandidateColor:I

    .line 252
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    .line 253
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    .line 256
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 257
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    const v3, 0x7f080006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCellRect:Landroid/graphics/RectF;

    .line 260
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandRects:Ljava/util/Vector;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/CandidateView;)Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mTimer:Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    return-object v0
.end method

.method private calculatePage(I)Z
    .registers 19
    .parameter "pageNo"

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNoCalculated:I

    move v15, v0

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_c

    const/4 v15, 0x1

    .line 469
    :goto_b
    return v15

    .line 398
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentWidth:I

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getMeasuredHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    const v16, 0x3f733333

    mul-float v15, v15, v16

    float-to-int v15, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentHeight:I

    .line 403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentWidth:I

    move v15, v0

    if-lez v15, :cond_4b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentHeight:I

    move v15, v0

    if-gtz v15, :cond_4d

    :cond_4b
    const/4 v15, 0x0

    goto :goto_b

    .line 405
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    .line 408
    .local v2, candSize:I
    const/4 v10, 0x0

    .line 409
    .local v10, onlyExtraMargin:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    const/16 v16, 0x1

    sub-int v4, v15, v16

    .line 410
    .local v4, fromPage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v16, p1, 0x1

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_7d

    .line 411
    const/4 v10, 0x1

    .line 412
    move/from16 v4, p1

    .line 416
    :cond_7d
    move v11, v4

    .end local v4           #fromPage:I
    .local v11, p:I
    :goto_7e
    move v0, v11

    move/from16 v1, p1

    if-gt v0, v1, :cond_1a0

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v15, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 418
    .local v13, pStart:I
    const/4 v12, 0x0

    .line 419
    .local v12, pSize:I
    const/4 v3, 0x0

    .line 420
    .local v3, charNum:I
    const/4 v8, 0x0

    .line 423
    .local v8, lastItemWidth:F
    const/4 v14, 0x0

    .line 424
    .local v14, xPos:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 425
    :goto_a3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentWidth:I

    move v15, v0

    int-to-float v15, v15

    cmpg-float v15, v14, v15

    if-gez v15, :cond_12d

    add-int v15, v13, v12

    if-ge v15, v2, :cond_12d

    .line 426
    add-int v5, v13, v12

    .line 427
    .local v5, itemPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 428
    .local v6, itemStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCorrectionIndex:I

    move v15, v0

    if-ne v5, v15, :cond_11e

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 433
    :goto_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object v15, v0

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 434
    .local v7, itemWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mMinItemWidth:F

    move v15, v0

    cmpg-float v15, v7, v15

    if-gez v15, :cond_ec

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mMinItemWidth:F

    move v7, v0

    .line 436
    :cond_ec
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMargin:F

    move v15, v0

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    add-float/2addr v7, v15

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v7, v15

    .line 438
    add-float v15, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_114

    if-nez v12, :cond_12d

    .line 439
    :cond_114
    add-float/2addr v14, v7

    .line 440
    move v8, v7

    .line 441
    add-int/lit8 v12, v12, 0x1

    .line 442
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v3, v15

    .line 446
    goto :goto_a3

    .line 431
    .end local v7           #itemWidth:F
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFaceNormal:Landroid/graphics/Typeface;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_d5

    .line 447
    .end local v5           #itemPos:I
    .end local v6           #itemStr:Ljava/lang/String;
    :cond_12d
    if-nez v10, :cond_168

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    add-int v16, v13, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCnToPage:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCnToPage:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int v16, v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentWidth:I

    move v15, v0

    int-to-float v15, v15

    sub-float/2addr v15, v14

    move v0, v12

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v9, v15, v16

    .line 454
    .local v9, marginExtra:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentWidth:I

    move v15, v0

    int-to-float v15, v15

    sub-float/2addr v15, v14

    cmpl-float v15, v15, v8

    if-lez v15, :cond_19b

    .line 460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMarginExtra:F

    move v15, v0

    cmpg-float v15, v15, v9

    if-gtz v15, :cond_192

    .line 461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMarginExtra:F

    move v9, v0

    .line 466
    :cond_192
    :goto_192
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMarginExtra:F

    .line 416
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7e

    .line 463
    :cond_19b
    const/4 v15, 0x1

    if-ne v12, v15, :cond_192

    .line 464
    const/4 v9, 0x0

    goto :goto_192

    .line 468
    .end local v3           #charNum:I
    .end local v8           #lastItemWidth:F
    .end local v9           #marginExtra:F
    .end local v12           #pSize:I
    .end local v13           #pStart:I
    .end local v14           #xPos:F
    :cond_1a0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNoCalculated:I

    .line 469
    const/4 v15, 0x1

    goto/16 :goto_b
.end method

.method private drawVerticalSeparator(Landroid/graphics/Canvas;F)F
    .registers 9
    .parameter "canvas"
    .parameter "xPos"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v1, p2

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingTop()I

    move-result v2

    float-to-int v3, p2

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 592
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 593
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getLimitedCandidateForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .registers 8
    .parameter "rawCandidate"
    .parameter "widthToDraw"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 576
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 577
    .local v0, subLen:I
    if-gt v0, v4, :cond_a

    move-object v2, p1

    .line 582
    :goto_9
    return-object v2

    .line 579
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 580
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 581
    .local v1, width:F
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1b

    if-lt v4, v0, :cond_a

    .line 582
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

.method private mapToItemInPage(II)I
    .registers 16
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, -0x1

    const/high16 v11, 0x4000

    .line 600
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget v10, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-virtual {v9, v10}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->pageReady(I)Z

    move-result v9

    if-eqz v9, :cond_1b

    iget v9, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNoCalculated:I

    iget v10, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    if-ne v9, v10, :cond_1b

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandRects:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-nez v9, :cond_1d

    :cond_1b
    move v9, v12

    .line 628
    :goto_1c
    return v9

    .line 605
    :cond_1d
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v9, v9, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    iget v10, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 606
    .local v7, pageStart:I
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v9, v9, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    iget v10, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v6, v9, v7

    .line 607
    .local v6, pageSize:I
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandRects:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v9, v6, :cond_4b

    move v9, v12

    .line 608
    goto :goto_1c

    .line 612
    :cond_4b
    const v5, 0x7f7fffff

    .line 613
    .local v5, nearestDis:F
    const/4 v4, -0x1

    .line 614
    .local v4, nearest:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_50
    if-ge v3, v6, :cond_99

    .line 615
    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandRects:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    .line 616
    .local v8, r:Landroid/graphics/RectF;
    iget v9, v8, Landroid/graphics/RectF;->left:F

    int-to-float v10, p1

    cmpg-float v9, v9, v10

    if-gez v9, :cond_78

    iget v9, v8, Landroid/graphics/RectF;->right:F

    int-to-float v10, p1

    cmpl-float v9, v9, v10

    if-lez v9, :cond_78

    iget v9, v8, Landroid/graphics/RectF;->top:F

    int-to-float v10, p2

    cmpg-float v9, v9, v10

    if-gez v9, :cond_78

    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, p2

    cmpl-float v9, v9, v10

    if-lez v9, :cond_78

    move v9, v3

    .line 617
    goto :goto_1c

    .line 619
    :cond_78
    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v10, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    int-to-float v10, p1

    sub-float v1, v9, v10

    .line 620
    .local v1, disx:F
    iget v9, v8, Landroid/graphics/RectF;->top:F

    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    int-to-float v10, p2

    sub-float v2, v9, v10

    .line 621
    .local v2, disy:F
    mul-float v9, v1, v1

    mul-float v10, v2, v2

    add-float v0, v9, v10

    .line 622
    .local v0, dis:F
    cmpg-float v9, v0, v5

    if-gez v9, :cond_96

    .line 623
    move v5, v0

    .line 624
    move v4, v3

    .line 614
    :cond_96
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .end local v0           #dis:F
    .end local v1           #disx:F
    .end local v2           #disy:F
    .end local v8           #r:Landroid/graphics/RectF;
    :cond_99
    move v9, v4

    .line 628
    goto :goto_1c
.end method

.method private measureCandidateFonts()V
    .registers 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->candidatesFromApp()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 694
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mRecommendedCandidateColor:I

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mNormalCandidateColor:I

    .line 695
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 696
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mImeCandidateTextSize:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateTextSize:I

    .line 706
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateTextSize:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_46

    .line 707
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 708
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    .line 709
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mSuspensionPointsWidth:F

    .line 712
    :cond_46
    return-void

    .line 698
    :cond_47
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mImeCandidateColor:I

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mNormalCandidateColor:I

    .line 699
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFaceNormal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 700
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mImeCandidateTextSize:I

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateTextSize:I

    .line 701
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMode:I

    if-nez v0, :cond_1f

    .line 702
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateTextSize:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateTextSize:I

    goto :goto_1f
.end method

.method private showBalloon(IZ)V
    .registers 23
    .parameter "candPos"
    .parameter "delayedShow"

    .prologue
    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->removeTimer()V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandRects:Ljava/util/Vector;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/RectF;

    .line 722
    .local v19, r:Landroid/graphics/RectF;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v4, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    sub-float/2addr v4, v5

    float-to-int v9, v4

    .line 723
    .local v9, desired_width:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v4, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    sub-float/2addr v4, v5

    float-to-int v10, v4

    .line 725
    .local v10, desired_height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    iget-object v5, v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    move v6, v0

    invoke-virtual {v4, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v4, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 726
    .local v5, label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateTextSize:I

    move v6, v0

    int-to-double v6, v6

    const-wide/high16 v11, 0x3ff8

    mul-double/2addr v6, v11

    double-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mImeCandidateColor:I

    move v8, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mLocationTmp:[I

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getLocationOnScreen([I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mHintPositionToInputView:[I

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mLocationTmp:[I

    move-object v6, v0

    .end local v5           #label:Ljava/lang/String;
    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getWidth()I

    move-result v8

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mHintPositionToInputView:[I

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getHeight()I

    move-result v6

    neg-int v6, v6

    aput v6, v4, v5

    .line 734
    const-wide/16 v17, 0x0

    .line 735
    .local v17, delay:J
    if-nez p2, :cond_b4

    const-wide/16 v17, 0x0

    .line 736
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->dismiss()V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->isShowing()Z

    move-result v4

    if-nez v4, :cond_d9

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mHintPositionToInputView:[I

    move-object v5, v0

    move-object v0, v4

    move-wide/from16 v1, v17

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedShow(J[I)V

    .line 742
    :goto_d8
    return-void

    .line 740
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    move-object v11, v0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mHintPositionToInputView:[I

    move-object v14, v0

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedUpdate(J[III)V

    goto :goto_d8
.end method


# virtual methods
.method public activeCurseBackward()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 339
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    if-lez v0, :cond_f

    .line 340
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    move v0, v2

    .line 343
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public activeCursorForward()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 328
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->pageReady(I)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v4

    .line 335
    :goto_d
    return v1

    .line 329
    :cond_e
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v1, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v1, v1, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v2, v1

    .line 331
    .local v0, pageSize:I
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_43

    .line 332
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    move v1, v5

    .line 333
    goto :goto_d

    :cond_43
    move v1, v4

    .line 335
    goto :goto_d
.end method

.method public enableActiveHighlight(Z)V
    .registers 3
    .parameter "enableActiveHighlight"

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mEnableActiveHighlight:Z

    if-ne p1, v0, :cond_5

    .line 325
    :goto_4
    return-void

    .line 323
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mEnableActiveHighlight:Z

    .line 324
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->invalidate()V

    goto :goto_4
.end method

.method public getActiveCandiatePosGlobal()I
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getActiveCandiatePosInPage()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    return v0
.end method

.method public getCorrectionIndex()I
    .registers 2

    .prologue
    .line 749
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCorrectionIndex:I

    return v0
.end method

.method public initialize(Lcom/google/android/inputmethod/pinyin/ArrowUpdater;Lcom/google/android/inputmethod/pinyin/BalloonHint;Landroid/view/GestureDetector;Lcom/google/android/inputmethod/pinyin/CandidateViewListener;)V
    .registers 5
    .parameter "arrowUpdater"
    .parameter "balloonHint"
    .parameter "gestureDetector"
    .parameter "cvListener"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mArrowUpdater:Lcom/google/android/inputmethod/pinyin/ArrowUpdater;

    .line 266
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    .line 267
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 268
    iput-object p4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCvListener:Lcom/google/android/inputmethod/pinyin/CandidateViewListener;

    .line 269
    return-void
.end method

.method public isActiveHighlightEnabled()Z
    .registers 2

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mEnableActiveHighlight:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 474
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isCandidatesListEmpty()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 572
    :cond_17
    :goto_17
    return-void

    .line 482
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/CandidateView;->calculatePage(I)Z

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 485
    .local v15, pStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v14, v18, v15

    .line 486
    .local v14, pSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMargin:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMarginExtra:F

    move/from16 v19, v0

    add-float v6, v18, v19

    .line 487
    .local v6, candMargin:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_89

    .line 488
    const/16 v18, 0x1

    sub-int v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    .line 491
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->removeAllElements()V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    .line 494
    .local v16, xPos:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 497
    .local v17, yPos:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->drawVerticalSeparator(Landroid/graphics/Canvas;F)F

    move-result v18

    add-float v16, v16, v18

    .line 498
    const/4 v12, 0x0

    .local v12, i:I
    :goto_d8
    if-ge v12, v14, :cond_35a

    .line 499
    const/4 v11, 0x0

    .line 500
    .local v11, footnoteSize:F
    const/4 v10, 0x0

    .line 501
    .local v10, footnote:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mShowFootnote:Z

    move/from16 v18, v0

    if-eqz v18, :cond_111

    .line 502
    add-int/lit8 v9, v12, 0x1

    .line 503
    .local v9, footIndex:I
    const/16 v18, 0xa

    move v0, v9

    move/from16 v1, v18

    if-gt v0, v1, :cond_10e

    .line 504
    rem-int/lit8 v18, v9, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 508
    :goto_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 509
    sget-boolean v18, Lcom/google/android/inputmethod/pinyin/CandidateView;->$assertionsDisabled:Z

    if-nez v18, :cond_111

    cmpg-float v18, v11, v6

    if-ltz v18, :cond_111

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 506
    :cond_10e
    const-string v10, " "

    goto :goto_f3

    .line 511
    .end local v9           #footIndex:I
    :cond_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mCandidatesList:Ljava/util/List;

    move-object/from16 v18, v0

    add-int v19, v15, v12

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 512
    .local v5, cand:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v12

    if-ne v0, v1, :cond_156

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mEnableActiveHighlight:Z

    move/from16 v18, v0

    if-eqz v18, :cond_156

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandidateColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFaceNormal:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 516
    :cond_156
    add-int v18, v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCorrectionIndex:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_33a

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mRecommendedCandidateColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 523
    :goto_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 524
    .local v7, candidateWidth:F
    const/4 v8, 0x0

    .line 525
    .local v8, centerOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mMinItemWidth:F

    move/from16 v18, v0

    cmpg-float v18, v7, v18

    if-gez v18, :cond_1ab

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mMinItemWidth:F

    move/from16 v18, v0

    sub-float v18, v18, v7

    const/high16 v19, 0x4000

    div-float v8, v18, v19

    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mMinItemWidth:F

    move v7, v0

    .line 530
    :cond_1ab
    const/high16 v18, 0x4000

    mul-float v18, v18, v6

    add-float v13, v7, v18

    .line 532
    .local v13, itemTotalWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v12

    if-ne v0, v1, :cond_251

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mEnableActiveHighlight:Z

    move/from16 v18, v0

    if-eqz v18, :cond_251

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingTop()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v20, v16, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 541
    :cond_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    move v1, v14

    if-ge v0, v1, :cond_26e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_26e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    const/high16 v18, 0x3f80

    sub-float v18, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v20, v16, v13

    const/high16 v21, 0x3f80

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v21, v0

    add-int v21, v21, v17

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v9

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 546
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mShowFootnote:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2e0

    .line 547
    sub-float v18, v6, v11

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v18, v18, v16

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 552
    :cond_2e0
    add-float v16, v16, v6

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v16

    sub-float v18, v18, v8

    cmpl-float v18, v7, v18

    if-lez v18, :cond_30d

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v16

    sub-float v18, v18, v8

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getLimitedCandidateForDrawing(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    .line 557
    :cond_30d
    add-float v18, v16, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 561
    add-float v18, v7, v6

    add-float v16, v16, v18

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->drawVerticalSeparator(Landroid/graphics/Canvas;F)F

    move-result v18

    add-float v16, v16, v18

    .line 498
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d8

    .line 520
    .end local v7           #candidateWidth:F
    .end local v8           #centerOffset:F
    .end local v13           #itemTotalWidth:F
    :cond_33a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mNormalCandidateColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFaceNormal:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_182

    .line 568
    .end local v5           #cand:Ljava/lang/String;
    .end local v10           #footnote:Ljava/lang/String;
    .end local v11           #footnoteSize:F
    :cond_35a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mArrowUpdater:Lcom/google/android/inputmethod/pinyin/ArrowUpdater;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mUpdateArrowStatusWhenDraw:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mArrowUpdater:Lcom/google/android/inputmethod/pinyin/ArrowUpdater;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/ArrowUpdater;->updateArrowStatus()V

    .line 570
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/CandidateView;->mUpdateArrowStatusWhenDraw:Z

    goto/16 :goto_17
.end method

.method protected onSizeChanged(IIII)V
    .registers 9
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentWidth:I

    .line 349
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x3f733333

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentHeight:I

    .line 356
    const/4 v0, 0x1

    .line 357
    .local v0, textSize:I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 358
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    .line 359
    :goto_30
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentHeight:I

    if-ge v1, v2, :cond_4e

    .line 360
    add-int/lit8 v0, v0, 0x1

    .line 361
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 362
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    goto :goto_30

    .line 364
    :cond_4e
    int-to-float v1, v0

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mMinItemWidth:F

    .line 366
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mImeCandidateTextSize:I

    .line 367
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-nez v1, :cond_89

    .line 368
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->measureCandidateFonts()V

    .line 374
    :goto_5a
    const/4 v0, 0x1

    .line 375
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 376
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    .line 377
    :goto_69
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mContentHeight:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_8f

    .line 378
    add-int/lit8 v0, v0, 0x1

    .line 379
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 380
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    goto :goto_69

    .line 371
    :cond_89
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/CandidateView;->setDecodingInfo(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)V

    goto :goto_5a

    .line 382
    :cond_8f
    add-int/lit8 v0, v0, -0x1

    .line 383
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 384
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    .line 389
    if-eqz p3, :cond_a7

    if-eqz p4, :cond_a7

    .line 390
    iput v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    .line 391
    iput v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    .line 393
    :cond_a7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 636
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEventReal(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 641
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->pageReady(I)Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNoCalculated:I

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    if-eq v3, v4, :cond_19

    :cond_17
    move v3, v6

    .line 689
    :goto_18
    return v3

    .line 645
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 646
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 648
    .local v2, y:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 649
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mTimer:Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->removeTimer()Z

    .line 650
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v3, v7, v8}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    move v3, v6

    .line 651
    goto :goto_18

    .line 654
    :cond_37
    const/4 v0, -0x1

    .line 656
    .local v0, clickedItemInPage:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_9c

    :cond_3f
    :goto_3f
    :pswitch_3f
    move v3, v6

    .line 689
    goto :goto_18

    .line 658
    :pswitch_41
    invoke-direct {p0, v1, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->mapToItemInPage(II)I

    move-result v0

    .line 659
    if-ltz v0, :cond_60

    .line 660
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->invalidate()V

    .line 661
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCvListener:Lcom/google/android/inputmethod/pinyin/CandidateViewListener;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v3, v3, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    iget v5, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v4, v3}, Lcom/google/android/inputmethod/pinyin/CandidateViewListener;->onClickChoice(I)V

    .line 664
    :cond_60
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mBalloonHint:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->delayedDismiss(J)V

    goto :goto_3f

    .line 668
    :pswitch_68
    invoke-direct {p0, v1, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->mapToItemInPage(II)I

    move-result v0

    .line 669
    if-ltz v0, :cond_3f

    .line 670
    invoke-direct {p0, v0, v6}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showBalloon(IZ)V

    .line 671
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mTimer:Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-virtual {v3, v7, v8, v4, v0}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->startTimer(JII)V

    goto :goto_3f

    .line 680
    :pswitch_79
    invoke-direct {p0, v1, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->mapToItemInPage(II)I

    move-result v0

    .line 681
    if-ltz v0, :cond_3f

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mTimer:Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->getActiveCandOfPageToShow()I

    move-result v3

    if-ne v0, v3, :cond_91

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mTimer:Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->getPageToShow()I

    move-result v4

    if-eq v3, v4, :cond_3f

    .line 684
    :cond_91
    invoke-direct {p0, v0, v6}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showBalloon(IZ)V

    .line 685
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mTimer:Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-virtual {v3, v7, v8, v4, v0}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->startTimer(JII)V

    goto :goto_3f

    .line 656
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_68
        :pswitch_41
        :pswitch_79
        :pswitch_3f
    .end packed-switch
.end method

.method public setCandidateMode(I)V
    .registers 2
    .parameter "newMode"

    .prologue
    .line 715
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCandidateMode:I

    .line 716
    return-void
.end method

.method public setCorrectionIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 745
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mCorrectionIndex:I

    .line 746
    return-void
.end method

.method public setDecodingInfo(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)V
    .registers 3
    .parameter "decInfo"

    .prologue
    .line 272
    if-nez p1, :cond_3

    .line 280
    :goto_2
    return-void

    .line 273
    :cond_3
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNoCalculated:I

    .line 276
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->measureCandidateFonts()V

    .line 279
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mTimer:Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->removeTimer()Z

    goto :goto_2
.end method

.method public showPage(IIZ)V
    .registers 5
    .parameter "pageNo"
    .parameter "activeCandInPage"
    .parameter "enableActiveHighlight"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-nez v0, :cond_5

    .line 314
    :goto_4
    return-void

    .line 301
    :cond_5
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    .line 302
    iput p2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mActiveCandInPage:I

    .line 303
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mEnableActiveHighlight:Z

    if-eq v0, p3, :cond_f

    .line 304
    iput-boolean p3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mEnableActiveHighlight:Z

    .line 307
    :cond_f
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mPageNo:I

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->calculatePage(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mUpdateArrowStatusWhenDraw:Z

    .line 313
    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->invalidate()V

    goto :goto_4

    .line 310
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView;->mUpdateArrowStatusWhenDraw:Z

    goto :goto_1a
.end method
