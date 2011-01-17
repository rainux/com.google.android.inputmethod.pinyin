.class public Lcom/google/android/inputmethod/pinyin/CandidatesContainer;
.super Landroid/widget/LinearLayout;
.source "CandidatesContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/google/android/inputmethod/pinyin/ArrowUpdater;


# static fields
.field private static ANIMATION_TIME:I

.field private static ARROW_ALPHA_DISABLED:I

.field private static ARROW_ALPHA_ENABLED:I


# instance fields
.field private mCandidateMode:I

.field private mCurrentPage:I

.field private mCvListener:Lcom/google/android/inputmethod/pinyin/CandidateViewListener;

.field private mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mInAnimInUse:Landroid/view/animation/Animation;

.field private mInAnimPushDown:Landroid/view/animation/Animation;

.field private mInAnimPushLeft:Landroid/view/animation/Animation;

.field private mInAnimPushRight:Landroid/view/animation/Animation;

.field private mInAnimPushUp:Landroid/view/animation/Animation;

.field private mLeftArrowBtn:Landroid/widget/ImageButton;

.field private mOutAnimInUse:Landroid/view/animation/Animation;

.field private mOutAnimPushDown:Landroid/view/animation/Animation;

.field private mOutAnimPushLeft:Landroid/view/animation/Animation;

.field private mOutAnimPushRight:Landroid/view/animation/Animation;

.field private mOutAnimPushUp:Landroid/view/animation/Animation;

.field private mRightArrowBtn:Landroid/widget/ImageButton;

.field private xOffsetForFlipper:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/16 v0, 0xff

    sput v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ARROW_ALPHA_ENABLED:I

    .line 60
    const/16 v0, 0x40

    sput v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ARROW_ALPHA_DISABLED:I

    .line 65
    const/16 v0, 0xc8

    sput v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ANIMATION_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCandidateMode:I

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    .line 171
    return-void
.end method

.method private createAnimation(FFFFFFJ)Landroid/view/animation/Animation;
    .registers 23
    .parameter "xFrom"
    .parameter "xTo"
    .parameter "yFrom"
    .parameter "yTo"
    .parameter "alphaFrom"
    .parameter "alphaTo"
    .parameter "duration"

    .prologue
    .line 468
    new-instance v13, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v13, v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 469
    .local v13, animSet:Landroid/view/animation/AnimationSet;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x1

    move v5, p1

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v11, p4

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 473
    .local v3, trans:Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    move-object v0, v12

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 474
    .local v12, alpha:Landroid/view/animation/Animation;
    invoke-virtual {v13, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 475
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 476
    move-object v0, v13

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 477
    return-object v13
.end method

.method private enableArrow(Landroid/widget/ImageButton;Z)V
    .registers 4
    .parameter "arrowBtn"
    .parameter "enabled"

    .prologue
    .line 377
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 378
    if-eqz p2, :cond_b

    .line 379
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ARROW_ALPHA_ENABLED:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 382
    :goto_a
    return-void

    .line 381
    :cond_b
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ARROW_ALPHA_DISABLED:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_a
.end method

.method private showArrow(Landroid/widget/ImageButton;Z)V
    .registers 4
    .parameter "arrowBtn"
    .parameter "show"

    .prologue
    .line 385
    if-eqz p2, :cond_7

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 389
    :goto_6
    return-void

    .line 388
    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_6
.end method

.method private startAnimation()V
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 482
    return-void
.end method

.method private stopAnimation()V
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 486
    return-void
.end method


# virtual methods
.method public activeCurseBackward()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 251
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-nez v1, :cond_10

    :cond_e
    move v1, v3

    .line 265
    :goto_f
    return v1

    .line 255
    :cond_10
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 256
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->isActiveHighlightEnabled()Z

    move-result v1

    if-nez v1, :cond_23

    .line 257
    invoke-virtual {v0, v3, v3, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    move v1, v2

    .line 258
    goto :goto_f

    .line 261
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->activeCurseBackward()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 262
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->invalidate()V

    move v1, v2

    .line 263
    goto :goto_f

    .line 265
    :cond_2e
    invoke-virtual {p0, v2, v2}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageBackward(ZZ)Z

    move-result v1

    goto :goto_f
.end method

.method public activeCurseForward()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 270
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-nez v1, :cond_10

    :cond_e
    move v1, v3

    .line 284
    :goto_f
    return v1

    .line 274
    :cond_10
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 275
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->isActiveHighlightEnabled()Z

    move-result v1

    if-nez v1, :cond_23

    .line 276
    invoke-virtual {v0, v3, v3, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    move v1, v2

    .line 277
    goto :goto_f

    .line 280
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->activeCursorForward()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 281
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->invalidate()V

    move v1, v2

    .line 282
    goto :goto_f

    .line 284
    :cond_2e
    invoke-virtual {p0, v2, v2}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageForward(ZZ)Z

    move-result v1

    goto :goto_f
.end method

.method public enableActiveHighlight(Z)V
    .registers 4
    .parameter "enableActiveHighlight"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 229
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/CandidateView;->enableActiveHighlight(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->invalidate()V

    .line 231
    return-void
.end method

.method public getActiveCandiatePos()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 350
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-nez v1, :cond_7

    move v1, v2

    .line 356
    :goto_6
    return v1

    .line 352
    :cond_7
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 353
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->isActiveHighlightEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    move v1, v2

    .line 354
    goto :goto_6

    .line 356
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getActiveCandiatePosGlobal()I

    move-result v1

    goto :goto_6
.end method

.method public getCorrectionIndex()I
    .registers 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 507
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getCorrectionIndex()I

    move-result v1

    return v1
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    return v0
.end method

.method public initialize(Lcom/google/android/inputmethod/pinyin/CandidateViewListener;Lcom/google/android/inputmethod/pinyin/BalloonHint;Landroid/view/GestureDetector;)V
    .registers 8
    .parameter "cvListener"
    .parameter "balloonHint"
    .parameter "gestureDetector"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCvListener:Lcom/google/android/inputmethod/pinyin/CandidateViewListener;

    .line 177
    const v2, 0x7f0d0003

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    .line 178
    const v2, 0x7f0d0007

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    .line 179
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    const v2, 0x7f0d0004

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    .line 183
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setMeasureAllChildren(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->invalidate()V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->requestLayout()V

    .line 188
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 189
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 190
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCvListener:Lcom/google/android/inputmethod/pinyin/CandidateViewListener;

    invoke-virtual {v0, p0, p2, p3, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->initialize(Lcom/google/android/inputmethod/pinyin/ArrowUpdater;Lcom/google/android/inputmethod/pinyin/BalloonHint;Landroid/view/GestureDetector;Lcom/google/android/inputmethod/pinyin/CandidateViewListener;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 192
    .end local v0           #cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    :cond_52
    return-void
.end method

.method public loadAnimation(ZZ)V
    .registers 16
    .parameter "animLeftRight"
    .parameter "forward"

    .prologue
    const/high16 v12, -0x4080

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 418
    if-eqz p1, :cond_74

    .line 419
    if-eqz p2, :cond_47

    .line 420
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushLeft:Landroid/view/animation/Animation;

    if-nez v0, :cond_2b

    .line 421
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ANIMATION_TIME:I

    int-to-long v7, v0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushLeft:Landroid/view/animation/Animation;

    .line 423
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v12

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimPushLeft:Landroid/view/animation/Animation;

    .line 426
    :cond_2b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushLeft:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 427
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimPushLeft:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    .line 460
    :goto_33
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 462
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 463
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 464
    return-void

    .line 429
    :cond_47
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushRight:Landroid/view/animation/Animation;

    if-nez v0, :cond_6b

    .line 430
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v12

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushRight:Landroid/view/animation/Animation;

    .line 432
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimPushRight:Landroid/view/animation/Animation;

    .line 435
    :cond_6b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushRight:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 436
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimPushRight:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    goto :goto_33

    .line 439
    :cond_74
    if-eqz p2, :cond_a3

    .line 440
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushUp:Landroid/view/animation/Animation;

    if-nez v0, :cond_9a

    .line 441
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushUp:Landroid/view/animation/Animation;

    .line 443
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v12

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimPushUp:Landroid/view/animation/Animation;

    .line 446
    :cond_9a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushUp:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 447
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimPushUp:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    goto :goto_33

    .line 449
    :cond_a3
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushDown:Landroid/view/animation/Animation;

    if-nez v0, :cond_c7

    .line 450
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v12

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushDown:Landroid/view/animation/Animation;

    .line 452
    sget v0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v1

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimPushDown:Landroid/view/animation/Animation;

    .line 455
    :cond_c7
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimPushDown:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 456
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimPushDown:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    goto/16 :goto_33
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 490
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 491
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/CandidateView;->enableActiveHighlight(Z)V

    .line 493
    .end local v0           #cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    :cond_1c
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 496
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 499
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 235
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v0

    .line 236
    .local v0, env:Lcom/google/android/inputmethod/pinyin/Environment;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->getScreenWidth()I

    move-result v2

    .line 237
    .local v2, measuredWidth:I
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getPaddingTop()I

    move-result v1

    .line 238
    .local v1, measuredHeight:I
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->getHeightForCandidates()I

    move-result v3

    add-int/2addr v1, v3

    .line 239
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 241
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 243
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 245
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    if-eqz v3, :cond_2a

    .line 246
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->xOffsetForFlipper:I

    .line 248
    :cond_2a
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1c

    .line 393
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_12

    .line 394
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCvListener:Lcom/google/android/inputmethod/pinyin/CandidateViewListener;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/CandidateViewListener;->onToRightGesture()V

    .line 403
    :cond_10
    :goto_10
    const/4 v1, 0x0

    return v1

    .line 395
    :cond_12
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_10

    .line 396
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCvListener:Lcom/google/android/inputmethod/pinyin/CandidateViewListener;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/CandidateViewListener;->onToLeftGesture()V

    goto :goto_10

    .line 398
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_10

    .line 399
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 400
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->enableActiveHighlight(Z)V

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 411
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->xOffsetForFlipper:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 412
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 413
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/CandidateView;->onTouchEventReal(Landroid/view/MotionEvent;)Z

    .line 414
    const/4 v1, 0x1

    return v1
.end method

.method public pageBackward(ZZ)Z
    .registers 13
    .parameter "animLeftRight"
    .parameter "enableActiveHighlight"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 290
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-nez v5, :cond_8

    move v5, v8

    .line 315
    :goto_7
    return v5

    .line 292
    :cond_8
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v5

    if-nez v5, :cond_14

    iget v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    if-nez v5, :cond_16

    :cond_14
    move v5, v8

    goto :goto_7

    .line 293
    :cond_16
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 294
    .local v3, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidateView;->isActiveHighlightEnabled()Z

    move-result v5

    if-nez v5, :cond_29

    .line 295
    invoke-virtual {v3, v8, v8, v9}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    move v5, v9

    .line 296
    goto :goto_7

    .line 299
    :cond_29
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 300
    .local v1, child:I
    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v2, v5, 0x2

    .line 301
    .local v2, childNext:I
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    check-cast v3, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 302
    .restart local v3       #cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 304
    .local v4, cvNext:Lcom/google/android/inputmethod/pinyin/CandidateView;
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    sub-int/2addr v5, v9

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    .line 305
    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getActiveCandiatePosInPage()I

    move-result v0

    .line 306
    .local v0, activeCandInPage:I
    if-eqz p1, :cond_74

    .line 307
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v5, v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v5, v5, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->mPageStart:Ljava/util/Vector;

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, v6, v5

    sub-int v0, v5, v9

    .line 310
    :cond_74
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    invoke-virtual {v4, v5, v0, p2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    .line 311
    invoke-virtual {p0, p1, v8}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->loadAnimation(ZZ)V

    .line 312
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->startAnimation()V

    .line 314
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->updateArrowStatus()V

    move v5, v9

    .line 315
    goto :goto_7
.end method

.method public pageForward(ZZ)Z
    .registers 12
    .parameter "animLeftRight"
    .parameter "enableActiveHighlight"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 320
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    if-nez v5, :cond_8

    move v5, v7

    .line 346
    :goto_7
    return v5

    .line 322
    :cond_8
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v5

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->preparePage(I)Z

    move-result v5

    if-nez v5, :cond_1e

    :cond_1c
    move v5, v7

    .line 323
    goto :goto_7

    .line 325
    :cond_1e
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 326
    .local v3, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidateView;->isActiveHighlightEnabled()Z

    move-result v5

    if-nez v5, :cond_31

    .line 327
    invoke-virtual {v3, v7, v7, v8}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    move v5, v8

    .line 328
    goto :goto_7

    .line 331
    :cond_31
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 332
    .local v1, child:I
    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v2, v5, 0x2

    .line 333
    .local v2, childNext:I
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    check-cast v3, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 334
    .restart local v3       #cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/CandidateView;->getActiveCandiatePosInPage()I

    move-result v0

    .line 335
    .local v0, activeCandInPage:I
    invoke-virtual {v3, p2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->enableActiveHighlight(Z)V

    .line 337
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 338
    .local v4, cvNext:Lcom/google/android/inputmethod/pinyin/CandidateView;
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    .line 339
    if-eqz p1, :cond_5b

    const/4 v0, 0x0

    .line 341
    :cond_5b
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    invoke-virtual {v4, v5, v0, p2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    .line 342
    invoke-virtual {p0, p1, v8}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->loadAnimation(ZZ)V

    .line 343
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->startAnimation()V

    .line 345
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->updateArrowStatus()V

    move v5, v8

    .line 346
    goto :goto_7
.end method

.method public setCandidateMode(I)V
    .registers 2
    .parameter "newMode"

    .prologue
    .line 502
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCandidateMode:I

    .line 503
    return-void
.end method

.method public setCorrectionIndex(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 511
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 512
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/CandidateView;->setCorrectionIndex(I)V

    .line 513
    return-void
.end method

.method public showCandidates(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;ZI)V
    .registers 9
    .parameter "decInfo"
    .parameter "enableActiveHighlight"
    .parameter "highlightIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    if-nez p1, :cond_5

    .line 221
    :goto_4
    return-void

    .line 197
    :cond_5
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    .line 198
    iput v3, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    .line 200
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->isCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 201
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    .line 202
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    .line 208
    :goto_19
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 209
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 210
    .local v0, cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCandidateMode:I

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->setCandidateMode(I)V

    .line 211
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->setDecodingInfo(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 204
    .end local v0           #cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    .end local v1           #i:I
    :cond_37
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    .line 205
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_19

    .line 213
    .restart local v1       #i:I
    :cond_42
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->stopAnimation()V

    .line 215
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 216
    .restart local v0       #cv:Lcom/google/android/inputmethod/pinyin/CandidateView;
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    if-ltz p3, :cond_5c

    move v3, p3

    :goto_52
    invoke-virtual {v0, v2, v3, p2}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->updateArrowStatus()V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->invalidate()V

    goto :goto_4

    .line 216
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getCorrectionIndex()I

    move-result v3

    goto :goto_52
.end method

.method public updateArrowStatus()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 360
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    if-gez v2, :cond_7

    .line 374
    :goto_6
    return-void

    .line 361
    :cond_7
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->pageForwardable(I)Z

    move-result v1

    .line 362
    .local v1, forwardEnabled:Z
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mDecInfo:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mCurrentPage:I

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->pageBackwardable(I)Z

    move-result v0

    .line 364
    .local v0, backwardEnabled:Z
    if-eqz v0, :cond_26

    .line 365
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    .line 369
    :goto_1e
    if-eqz v1, :cond_2c

    .line 370
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_6

    .line 367
    :cond_26
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_1e

    .line 372
    :cond_2c
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_6
.end method
