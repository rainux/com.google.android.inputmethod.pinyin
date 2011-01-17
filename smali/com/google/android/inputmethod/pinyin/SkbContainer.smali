.class public Lcom/google/android/inputmethod/pinyin/SkbContainer;
.super Landroid/widget/RelativeLayout;
.source "SkbContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;
    }
.end annotation


# static fields
.field static final MOVE_TOLERANCE:I = 0x6

.field private static POPUPWINDOW_FOR_PRESSED_UI:Z = false

.field private static final Y_BIAS_CORRECTION:I = -0xa


# instance fields
.field private mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

.field private mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

.field volatile mDiscardEvent:Z

.field private mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

.field private mLastCandidatesShowing:Z

.field private mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

.field mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

.field private mPopupSkb:Landroid/widget/PopupWindow;

.field mPopupSkbNoResponse:Z

.field mPopupSkbShow:Z

.field mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

.field private mPopupX:I

.field private mPopupY:I

.field private mService:Landroid/inputmethodservice/InputMethodService;

.field private mSkbFlipper:Landroid/widget/ViewFlipper;

.field private mSkbLayout:I

.field mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

.field private mSkvPosInContainer:[I

.field mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

.field volatile mWaitForTouchUp:Z

.field mXLast:I

.field private mXyPosTmp:[I

.field mYLast:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->POPUPWINDOW_FOR_PRESSED_UI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v1, -0x8000

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbLayout:I

    .line 94
    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    .line 106
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbShow:Z

    .line 113
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbNoResponse:Z

    .line 129
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mWaitForTouchUp:Z

    .line 136
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mDiscardEvent:Z

    .line 156
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    .line 161
    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 171
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mXyPosTmp:[I

    .line 176
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    .line 178
    new-instance v0, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    invoke-direct {v0, p0, p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;-><init>(Lcom/google/android/inputmethod/pinyin/SkbContainer;Lcom/google/android/inputmethod/pinyin/SkbContainer;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    .line 180
    new-instance v0, Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-direct {v0, p1, p0, v1, v4}, Lcom/google/android/inputmethod/pinyin/BalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    .line 181
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->POPUPWINDOW_FOR_PRESSED_UI:Z

    if-eqz v0, :cond_3e

    .line 182
    new-instance v0, Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-direct {v0, p1, p0, v1, v4}, Lcom/google/android/inputmethod/pinyin/BalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    .line 185
    :cond_3e
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    .line 186
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/SkbContainer;)Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/SkbContainer;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->resetKeyPress(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/inputmethod/pinyin/SkbContainer;Lcom/google/android/inputmethod/pinyin/SoftKey;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->responseKeyEvent(Lcom/google/android/inputmethod/pinyin/SoftKey;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/inputmethod/pinyin/SkbContainer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->popupSymbols()V

    return-void
.end method

.method private dimSoftKeyboard(Z)V
    .registers 3
    .parameter "dimSkb"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->dimSoftKeyboard(Z)V

    .line 352
    return-void
.end method

.method private dismissPopupSkb()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 356
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbShow:Z

    .line 357
    invoke-direct {p0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->dimSoftKeyboard(Z)V

    .line 358
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->resetKeyPress(J)V

    .line 359
    return-void
.end method

.method private getViewFlipper()Landroid/widget/ViewFlipper;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    if-nez v0, :cond_f

    .line 274
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    .line 276
    :cond_f
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method private inKeyboardView(II[I)Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "positionInParent"

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbShow:Z

    if-eqz v0, :cond_36

    .line 292
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupX:I

    if-gt v0, p1, :cond_34

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupX:I

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_34

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupY:I

    if-gt v0, p2, :cond_34

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupY:I

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p2, :cond_34

    .line 294
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupX:I

    aput v1, p3, v0

    .line 295
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupY:I

    aput v1, p3, v0

    .line 296
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v0, p3}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->setOffsetToSkbContainer([I)V

    .line 297
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    .line 302
    :goto_33
    return-object v0

    .line 299
    :cond_34
    const/4 v0, 0x0

    goto :goto_33

    .line 302
    :cond_36
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    goto :goto_33
.end method

.method private popupSymbols()V
    .registers 16

    .prologue
    const/4 v14, -0x2

    const/4 v13, 0x1

    .line 306
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->getPopupResId()I

    move-result v1

    .line 307
    .local v1, popupResId:I
    if-lez v1, :cond_31

    .line 308
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getWidth()I

    move-result v8

    .line 309
    .local v8, skbContainerWidth:I
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getHeight()I

    move-result v7

    .line 311
    .local v7, skbContainerHeight:I
    int-to-double v9, v8

    const-wide v11, 0x3fe999999999999aL

    mul-double/2addr v9, v11

    double-to-int v3, v9

    .line 312
    .local v3, miniSkbWidth:I
    int-to-double v9, v7

    const-wide v11, 0x3fcd70a3d70a3d71L

    mul-double/2addr v9, v11

    double-to-int v4, v9

    .line 314
    .local v4, miniSkbHeight:I
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/SkbPool;->getInstance()Lcom/google/android/inputmethod/pinyin/SkbPool;

    move-result-object v0

    .line 315
    .local v0, skbPool:Lcom/google/android/inputmethod/pinyin/SkbPool;
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/SkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-result-object v6

    .line 317
    .local v6, skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    if-nez v6, :cond_32

    .line 348
    .end local v0           #skbPool:Lcom/google/android/inputmethod/pinyin/SkbPool;
    .end local v3           #miniSkbWidth:I
    .end local v4           #miniSkbHeight:I
    .end local v6           #skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .end local v7           #skbContainerHeight:I
    .end local v8           #skbContainerWidth:I
    :cond_31
    :goto_31
    return-void

    .line 319
    .restart local v0       #skbPool:Lcom/google/android/inputmethod/pinyin/SkbPool;
    .restart local v3       #miniSkbWidth:I
    .restart local v4       #miniSkbHeight:I
    .restart local v6       #skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v7       #skbContainerHeight:I
    .restart local v8       #skbContainerWidth:I
    :cond_32
    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbTotalWidth()I

    move-result v2

    sub-int v2, v8, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupX:I

    .line 320
    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbTotalHeight()I

    move-result v2

    sub-int v2, v7, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupY:I

    .line 322
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-nez v2, :cond_5b

    .line 323
    new-instance v2, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    .line 324
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v2, v14, v14}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->onMeasure(II)V

    .line 327
    :cond_5b
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v2, p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v2, v6}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->setSoftKeyboard(Lcom/google/android/inputmethod/pinyin/SoftKeyboard;)Z

    .line 329
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v2, v5, v9, v13}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->setBalloonHint(Lcom/google/android/inputmethod/pinyin/BalloonHint;Lcom/google/android/inputmethod/pinyin/BalloonHint;Z)V

    .line 331
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 332
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreWidth()I

    move-result v5

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v9}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v5, v9

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v9}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingRight()I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 335
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbCoreHeight()I

    move-result v5

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v9}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingTop()I

    move-result v9

    add-int/2addr v5, v9

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v9}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 339
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mXyPosTmp:[I

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getLocationInWindow([I)V

    .line 340
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    iget v9, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupX:I

    iget v10, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupY:I

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mXyPosTmp:[I

    aget v11, v11, v13

    add-int/2addr v10, v11

    invoke-virtual {v2, p0, v5, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 342
    iput-boolean v13, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbShow:Z

    .line 343
    iput-boolean v13, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbNoResponse:Z

    .line 345
    invoke-direct {p0, v13}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->dimSoftKeyboard(Z)V

    .line 346
    const-wide/16 v9, 0x0

    invoke-direct {p0, v9, v10}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->resetKeyPress(J)V

    goto/16 :goto_31
.end method

.method private resetKeyPress(J)V
    .registers 4
    .parameter "delay"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;->removeTimer()Z

    .line 364
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-eqz v0, :cond_e

    .line 365
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->resetKeyPress(J)V

    .line 367
    :cond_e
    return-void
.end method

.method private responseKeyEvent(Lcom/google/android/inputmethod/pinyin/SoftKey;)V
    .registers 2
    .parameter "sKey"

    .prologue
    .line 284
    if-nez p1, :cond_3

    .line 286
    .end local p0
    :goto_2
    return-void

    .line 285
    .restart local p0
    :cond_3
    iget-object p0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    .end local p0
    check-cast p0, Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-virtual {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->responseSoftKeyEvent(Lcom/google/android/inputmethod/pinyin/SoftKey;)V

    goto :goto_2
.end method

.method private updateSkbLayout()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 249
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->getScreenWidth()I

    move-result v3

    .line 250
    .local v3, screenWidth:I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->getKeyHeight()I

    move-result v6

    .line 251
    .local v6, keyHeight:I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mEnvironment:Lcom/google/android/inputmethod/pinyin/Environment;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/Environment;->getSkbHeight()I

    move-result v4

    .line 253
    .local v4, skbHeight:I
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 255
    .local v8, r:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getViewFlipper()Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    .line 257
    const/4 v7, 0x0

    .line 258
    .local v7, majorSkb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/SkbPool;->getInstance()Lcom/google/android/inputmethod/pinyin/SkbPool;

    move-result-object v0

    .line 260
    .local v0, skbPool:Lcom/google/android/inputmethod/pinyin/SkbPool;
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbLayout:I

    if-eqz v1, :cond_3c

    .line 261
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbLayout:I

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbLayout:I

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/SkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-result-object v7

    .line 265
    :cond_3c
    if-eqz v7, :cond_46

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v1, v7}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->setSoftKeyboard(Lcom/google/android/inputmethod/pinyin/SoftKeyboard;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 270
    :cond_46
    :goto_46
    return-void

    .line 268
    :cond_47
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mBalloonOnKey:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mBalloonPopup:Lcom/google/android/inputmethod/pinyin/BalloonHint;

    invoke-virtual {v1, v2, v5, v9}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->setBalloonHint(Lcom/google/android/inputmethod/pinyin/BalloonHint;Lcom/google/android/inputmethod/pinyin/BalloonHint;Z)V

    .line 269
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate()V

    goto :goto_46
.end method


# virtual methods
.method public dismissPopups()V
    .registers 3

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->handleBack(Z)Z

    .line 382
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->resetKeyPress(J)V

    .line 383
    return-void
.end method

.method public handleBack(Z)Z
    .registers 4
    .parameter "realAction"

    .prologue
    const/4 v1, 0x1

    .line 370
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbShow:Z

    if-eqz v0, :cond_10

    .line 371
    if-nez p1, :cond_9

    move v0, v1

    .line 377
    :goto_8
    return v0

    .line 373
    :cond_9
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->dismissPopupSkb()V

    .line 374
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mDiscardEvent:Z

    move v0, v1

    .line 375
    goto :goto_8

    .line 377
    :cond_10
    const/4 v0, 0x0

    goto :goto_8
.end method

.method handleDownEvent(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 502
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->resetKeyPress(J)V

    .line 504
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mWaitForTouchUp:Z

    .line 505
    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mDiscardEvent:Z

    .line 507
    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    .line 508
    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 509
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->inKeyboardView(II[I)Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    .line 510
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-eqz v0, :cond_32

    .line 511
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    aget v1, v1, v4

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    aget v2, v2, v3

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->onKeyPress(IILcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;Z)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 514
    :cond_32
    return-void
.end method

.method handleMoveEvent(II)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->isMoveTooSmall(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 499
    :cond_8
    :goto_8
    return-void

    .line 474
    :cond_9
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_8

    if-ltz p2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_8

    .line 477
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mDiscardEvent:Z

    if-eqz v1, :cond_23

    .line 478
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->resetKeyPress(J)V

    goto :goto_8

    .line 482
    :cond_23
    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbShow:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbNoResponse:Z

    if-nez v1, :cond_8

    .line 485
    :cond_2b
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->inKeyboardView(II[I)Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    move-result-object v0

    .line 486
    .local v0, skv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;
    if-eqz v0, :cond_8

    .line 487
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-eq v0, v1, :cond_50

    .line 488
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    .line 489
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    aget v2, v2, v3

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    aget v3, v3, v5

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mLongPressTimer:Lcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->onKeyPress(IILcom/google/android/inputmethod/pinyin/SkbContainer$LongPressTimer;Z)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    goto :goto_8

    .line 491
    :cond_50
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-eqz v1, :cond_8

    .line 492
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    aget v2, v2, v3

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    aget v3, v3, v5

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->onKeyMove(II)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 494
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    if-nez v1, :cond_8

    .line 495
    iput-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mDiscardEvent:Z

    goto :goto_8
.end method

.method handleUpEvent(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 445
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mDiscardEvent:Z

    if-eqz v0, :cond_b

    .line 446
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->resetKeyPress(J)V

    .line 467
    :goto_a
    return-void

    .line 450
    :cond_b
    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mWaitForTouchUp:Z

    .line 454
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-eqz v0, :cond_23

    .line 455
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    aget v1, v1, v4

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkvPosInContainer:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->onKeyRelease(II)Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 459
    :cond_23
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbShow:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbNoResponse:Z

    if-nez v0, :cond_30

    .line 460
    :cond_2b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSoftKeyDown:Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->responseKeyEvent(Lcom/google/android/inputmethod/pinyin/SoftKey;)V

    .line 463
    :cond_30
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbNoResponse:Z

    if-nez v0, :cond_3d

    .line 464
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->dismissPopupSkb()V

    .line 466
    :cond_3d
    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbNoResponse:Z

    goto :goto_a
.end method

.method public isCurrentSkbSticky()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 203
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-nez v1, :cond_7

    move v1, v2

    .line 208
    :goto_6
    return v1

    .line 204
    :cond_7
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getSoftKeyboard()Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-result-object v0

    .line 205
    .local v0, skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    if-eqz v0, :cond_14

    .line 206
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getStickyFlag()Z

    move-result v1

    goto :goto_6

    :cond_14
    move v1, v2

    .line 208
    goto :goto_6
.end method

.method isMoveTooSmall(II)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x6

    .line 517
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mXLast:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_17

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mYLast:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 387
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v0

    .line 388
    .local v0, env:Lcom/google/android/inputmethod/pinyin/Environment;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->getScreenWidth()I

    move-result v2

    .line 389
    .local v2, measuredWidth:I
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getPaddingTop()I

    move-result v1

    .line 390
    .local v1, measuredHeight:I
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->getSkbHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 391
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 393
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 395
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 396
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 21
    .parameter "v"
    .parameter "event"

    .prologue
    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupX:I

    move v8, v0

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupY:I

    move v9, v0

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v16

    .line 531
    .local v16, newEv:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 532
    .local v17, ret:Z
    return v17
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 400
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 402
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->getViewFlipper()Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 403
    invoke-direct {p0, v4, v5}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->resetKeyPress(J)V

    move v2, v3

    .line 441
    :goto_14
    return v2

    .line 407
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 408
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 410
    .local v1, y:I
    iget-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mPopupSkbShow:Z

    if-nez v2, :cond_36

    .line 411
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 412
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mXLast:I

    .line 413
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mYLast:I

    .line 414
    invoke-direct {p0, v4, v5}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->resetKeyPress(J)V

    .line 415
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mDiscardEvent:Z

    move v2, v3

    .line 416
    goto :goto_14

    .line 420
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_56

    .line 434
    :goto_3d
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mXLast:I

    .line 435
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mYLast:I

    .line 437
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkv:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-nez v2, :cond_53

    .line 438
    const/4 v2, 0x0

    goto :goto_14

    .line 422
    :pswitch_47
    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->handleDownEvent(II)V

    goto :goto_3d

    .line 426
    :pswitch_4b
    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->handleMoveEvent(II)V

    goto :goto_3d

    .line 430
    :pswitch_4f
    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->handleUpEvent(II)V

    goto :goto_3d

    :cond_53
    move v2, v3

    .line 441
    goto :goto_14

    .line 420
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_47
        :pswitch_4f
        :pswitch_4b
    .end packed-switch
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2
    .parameter "gestureDetector"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 200
    return-void
.end method

.method public setInputModeSwitcher(Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;)V
    .registers 2
    .parameter "inputModeSwitcher"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    .line 196
    return-void
.end method

.method public setService(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 192
    return-void
.end method

.method setViewFlipper(Landroid/widget/ViewFlipper;)V
    .registers 2
    .parameter "viewFlipper"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    .line 281
    return-void
.end method

.method public toggleCandidateMode(Z)V
    .registers 6
    .parameter "candidatesShowing"

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->isChineseText()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mLastCandidatesShowing:Z

    if-ne v2, p1, :cond_12

    .line 228
    :cond_11
    :goto_11
    return-void

    .line 214
    :cond_12
    iput-boolean p1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mLastCandidatesShowing:Z

    .line 216
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getSoftKeyboard()Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-result-object v0

    .line 217
    .local v0, skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    if-eqz v0, :cond_11

    .line 219
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->getTooggleStateForCnCand()I

    move-result v1

    .line 220
    .local v1, state:I
    if-nez p1, :cond_36

    .line 221
    invoke-virtual {v0, v1, v3}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->disableToggleState(IZ)V

    .line 222
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->getToggleStates()Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->enableToggleStates(Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;)V

    .line 227
    :goto_30
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->invalidate()V

    goto :goto_11

    .line 224
    :cond_36
    invoke-virtual {v0, v1, v3}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->enableToggleState(IZ)V

    goto :goto_30
.end method

.method public updateInputMode()V
    .registers 4

    .prologue
    .line 231
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->getSkbLayout()I

    move-result v1

    .line 232
    .local v1, skbLayout:I
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbLayout:I

    if-eq v2, v1, :cond_f

    .line 233
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mSkbLayout:I

    .line 234
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->updateSkbLayout()V

    .line 237
    :cond_f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mLastCandidatesShowing:Z

    .line 239
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    if-nez v2, :cond_17

    .line 245
    :cond_16
    :goto_16
    return-void

    .line 241
    :cond_17
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mMajorView:Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboardView;->getSoftKeyboard()Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-result-object v0

    .line 242
    .local v0, skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    if-eqz v0, :cond_16

    .line 243
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbContainer;->mInputModeSwitcher:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;->getToggleStates()Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->enableToggleStates(Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;)V

    .line 244
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SkbContainer;->invalidate()V

    goto :goto_16
.end method
