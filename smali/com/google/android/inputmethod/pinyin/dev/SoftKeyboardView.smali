.class public Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;
.super Landroid/view/View;
.source "SoftKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;,
        Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;,
        Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;
    }
.end annotation


# static fields
.field public static final FULL_LABEL_IN_POPUP_HINT:Z = true

.field public static final HORIZONTAL_CORRECTION:I = 0x0

.field public static final INIT_REPEAT_DELAY:I = 0x320

.field public static final LONG_PRESS_INTERVAL:I = 0x320

.field private static final MSG_FLIP_POPUP_HINT:I = 0x3

.field private static final MSG_HIDE_POPUP_HINT:I = 0x4

.field private static final MSG_REPEAT:I = 0x2

.field private static final MSG_SHOW_POPUP_HINT:I = 0x1

.field public static final POPUP_HINT_DELAY:I = 0x0

.field public static final POPUP_HINT_HIDE_DELAY:I = 0xc8

.field public static final REPEAT_INTERVAL:I = 0xc8

.field public static final VERTICAL_CORRECTION:I


# instance fields
.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field mContext:Landroid/content/Context;

.field private mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mDesiredHeight:I

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;

.field private mKeyDownTime:J

.field private mListener:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;

.field mPopupHint:Landroid/widget/PopupWindow;

.field private mPopupHintMargin:I

.field private mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

.field private mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

.field mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

.field mScreenHeight:I

.field mScreenWidth:I

.field private mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mSoundManager:Lcom/google/android/inputmethod/pinyin/SoundManager;

.field protected mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;-><init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mVibratePattern:[J

    .line 110
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    .line 113
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$2;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$2;-><init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->addOnResourceChangedListener(Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getCurrentResource()Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    .line 120
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/SoundManager;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoundManager:Lcom/google/android/inputmethod/pinyin/SoundManager;

    .line 121
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mVibrator:Landroid/os/Vibrator;

    .line 122
    invoke-virtual {p0, v2, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->measure(II)V

    .line 123
    return-void

    .line 106
    nop

    :array_4c
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->doShowPopupHint(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->doFlipPopupHint(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->fireEvent(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->doHidePopupHint()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->preparePopupHint(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    return-void
.end method

.method private final computeSoftKeyRect(Ljava/lang/Object;)Landroid/graphics/Rect;
    .registers 6
    .parameter "rect"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getSoftKeyRect(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    move-result-object v1

    .line 227
    .local v1, resRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 228
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->left:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 229
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->top:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 230
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->right:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 231
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->bottom:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 232
    return-object v0
.end method

.method private doFlipPopupHint(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V
    .registers 10
    .parameter "key"
    .parameter "isBottomHalf"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v3, v1, v2

    .line 444
    .local v3, centerX:F
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v4, v1, v2

    .line 447
    .local v4, centerY:F
    if-nez p2, :cond_38

    .line 448
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 449
    .local v0, rotation:Lcom/google/android/inputmethod/pinyin/dev/Rotate3dAnimation;
    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;

    iget-object v2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->longPressKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;-><init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;)V

    .end local v3           #centerX:F
    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 453
    :goto_2d
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/Rotate3dAnimation;->setDuration(J)V

    .line 455
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    invoke-virtual {v1, v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 456
    return-void

    .line 451
    .end local v0           #rotation:Lcom/google/android/inputmethod/pinyin/dev/Rotate3dAnimation;
    .restart local v3       #centerX:F
    :cond_38
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/Rotate3dAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/Rotate3dAnimation;-><init>(FFFFFZ)V

    .restart local v0       #rotation:Lcom/google/android/inputmethod/pinyin/dev/Rotate3dAnimation;
    goto :goto_2d
.end method

.method private doHidePopupHint()V
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 508
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 510
    :cond_9
    return-void
.end method

.method private doShowPopupHint(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V
    .registers 10
    .parameter "key"

    .prologue
    .line 479
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    if-nez v5, :cond_5

    .line 504
    :goto_4
    return-void

    .line 483
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->preparePopupHint(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 485
    iget-object v5, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->rect:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->computeSoftKeyRect(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v4

    .line 486
    .local v4, r:Landroid/graphics/Rect;
    iget-object v5, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupRect:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->computeSoftKeyRect(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v3

    .line 488
    .local v3, pr:Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int v2, v5, v6

    .line 489
    .local v2, popupWidth:I
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int v1, v5, v6

    .line 491
    .local v1, popupHeight:I
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 492
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 493
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    sub-int v5, v2, v5

    div-int/lit8 v0, v5, 0x2

    .line 494
    .local v0, deltaX:I
    if-gez v0, :cond_36

    .line 495
    const/4 v0, 0x0

    .line 498
    :cond_36
    iget v5, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_44

    .line 499
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5, v6, v2, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->invokePopupHint(IIII)V

    goto :goto_4

    .line 501
    :cond_44
    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v0

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v1

    iget v7, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintMargin:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v5, v6, v2, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->invokePopupHint(IIII)V

    goto :goto_4
.end method

.method private drawBuffer(Landroid/graphics/Rect;)V
    .registers 14
    .parameter "rect"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, drawAllKeys:Z
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getWidth()I

    move-result v9

    if-ne v8, v9, :cond_1f

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_41

    .line 175
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getWidth()I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 176
    .local v7, width:I
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getHeight()I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 177
    .local v3, height:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 178
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 179
    const/4 v2, 0x1

    .line 181
    .end local v3           #height:I
    .end local v7           #width:I
    :cond_41
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 183
    .local v0, canvas:Landroid/graphics/Canvas;
    if-nez v2, :cond_91

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_91

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 184
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 185
    .local v1, clipRegion:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 186
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    if-eqz v8, :cond_91

    .line 187
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v8, v8, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->rect:Ljava/lang/Object;

    invoke-direct {p0, v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->computeSoftKeyRect(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v6

    .line 189
    .local v6, r:Landroid/graphics/Rect;
    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    iget v9, v1, Landroid/graphics/Rect;->left:I

    if-gt v8, v9, :cond_91

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    iget v9, v1, Landroid/graphics/Rect;->top:I

    if-gt v8, v9, :cond_91

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, 0x1

    iget v9, v1, Landroid/graphics/Rect;->right:I

    if-lt v8, v9, :cond_91

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x1

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v9, :cond_91

    .line 191
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-direct {p0, v0, v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->drawSoftKey(Landroid/graphics/Canvas;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 192
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 206
    .end local v1           #clipRegion:Landroid/graphics/Rect;
    .end local v6           #r:Landroid/graphics/Rect;
    :cond_90
    return-void

    .line 198
    :cond_91
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getHeight()I

    move-result v10

    invoke-virtual {v8, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    if-eqz v8, :cond_90

    .line 201
    const/4 v4, 0x0

    .local v4, i:I
    :goto_a8
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    array-length v8, v8

    if-ge v4, v8, :cond_90

    .line 202
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v8, v4

    .line 203
    .local v5, key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    invoke-direct {p0, v0, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->drawSoftKey(Landroid/graphics/Canvas;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_a8
.end method

.method private drawSoftKey(Landroid/graphics/Canvas;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V
    .registers 26
    .parameter "canvas"
    .parameter "key"

    .prologue
    .line 264
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->rect:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->computeSoftKeyRect(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v16

    .line 265
    .local v16, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1cc

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_1cc

    .line 266
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightBackground:I

    move v5, v0

    .line 267
    .local v5, background:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightIcon:I

    move v10, v0

    .line 268
    .local v10, icon:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightLabel:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getSoftKeyLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, label:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightLabelStyle:I

    move/from16 v17, v0

    .line 277
    .local v17, style:I
    :goto_42
    const/16 v19, -0x1

    move v0, v5

    move/from16 v1, v19

    if-eq v0, v1, :cond_80

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 279
    .local v6, bgKey:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object v0, v6

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    .end local v6           #bgKey:Landroid/graphics/drawable/Drawable;
    :cond_80
    const/16 v19, -0x1

    move v0, v10

    move/from16 v1, v19

    if-eq v0, v1, :cond_f6

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 290
    .local v11, iconKey:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 291
    .local v9, h:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 292
    .local v18, w:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v19, v19, v18

    div-int/lit8 v13, v19, 0x2

    .line 293
    .local v13, paddingX:I
    if-lez v13, :cond_1ec

    .line 294
    :goto_b0
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v19, v19, v9

    div-int/lit8 v14, v19, 0x2

    .line 295
    .local v14, paddingY:I
    if-lez v14, :cond_1f2

    .line 296
    :goto_c4
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v21, v21, v13

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v22, v22, v14

    move-object v0, v11

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    .end local v9           #h:I
    .end local v11           #iconKey:Landroid/graphics/drawable/Drawable;
    .end local v13           #paddingX:I
    .end local v14           #paddingY:I
    .end local v18           #w:I
    :cond_f6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_177

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v15

    .line 303
    .local v15, paint:Landroid/graphics/Paint;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v13, v19, v20

    .line 304
    .local v13, paddingX:F
    const/16 v19, 0x0

    cmpl-float v19, v13, v19

    if-lez v19, :cond_1f8

    .line 305
    :goto_12d
    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSize()F

    move-result v19

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v20

    sub-float v7, v19, v20

    .line 306
    .local v7, fontHeight:F
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v7

    const/high16 v20, 0x4000

    div-float v14, v19, v20

    .line 307
    .local v14, paddingY:F
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v13

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v14

    add-float v20, v20, v7

    move-object/from16 v0, p1

    move-object v1, v12

    move/from16 v2, v19

    move/from16 v3, v20

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 310
    .end local v7           #fontHeight:F
    .end local v13           #paddingX:F
    .end local v14           #paddingY:F
    .end local v15           #paint:Landroid/graphics/Paint;
    :cond_177
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->mFooter:Ljava/lang/String;

    move-object v8, v0

    .line 311
    .local v8, footer:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1cb

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v15

    .line 313
    .restart local v15       #paint:Landroid/graphics/Paint;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v20

    sub-float v19, v19, v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v21

    sub-float v20, v20, v21

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v19

    move/from16 v3, v20

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    .end local v15           #paint:Landroid/graphics/Paint;
    :cond_1cb
    return-void

    .line 271
    .end local v5           #background:I
    .end local v8           #footer:Ljava/lang/String;
    .end local v10           #icon:I
    .end local v12           #label:Ljava/lang/String;
    .end local v17           #style:I
    :cond_1cc
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->background:I

    move v5, v0

    .line 272
    .restart local v5       #background:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->icon:I

    move v10, v0

    .line 273
    .restart local v10       #icon:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->label:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getSoftKeyLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 274
    .restart local v12       #label:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->labelStyle:I

    move/from16 v17, v0

    .restart local v17       #style:I
    goto/16 :goto_42

    .line 293
    .restart local v9       #h:I
    .restart local v11       #iconKey:Landroid/graphics/drawable/Drawable;
    .local v13, paddingX:I
    .restart local v18       #w:I
    :cond_1ec
    const/16 v19, 0x0

    move/from16 v13, v19

    goto/16 :goto_b0

    .line 295
    .local v14, paddingY:I
    :cond_1f2
    const/16 v19, 0x0

    move/from16 v14, v19

    goto/16 :goto_c4

    .line 304
    .end local v9           #h:I
    .end local v11           #iconKey:Landroid/graphics/drawable/Drawable;
    .end local v14           #paddingY:I
    .end local v18           #w:I
    .local v13, paddingX:F
    .restart local v15       #paint:Landroid/graphics/Paint;
    :cond_1f8
    const/16 v19, 0x0

    move/from16 v13, v19

    goto/16 :goto_12d
.end method

.method private findSoftKey(II)I
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 335
    int-to-float v5, p1

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 336
    .local v2, px:F
    int-to-float v5, p2

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 337
    .local v3, py:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    array-length v5, v5

    if-ge v0, v5, :cond_43

    .line 338
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v1, v5, v0

    .line 339
    .local v1, key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    iget v5, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_23

    .line 337
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 342
    :cond_23
    iget-object v5, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->rect:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getSoftKeyRect(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    move-result-object v4

    .line 343
    .local v4, rect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    iget v5, v4, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->left:F

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_20

    iget v5, v4, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->right:F

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_20

    iget v5, v4, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->top:F

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_20

    iget v5, v4, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->bottom:F

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_20

    move v5, v0

    .line 348
    .end local v1           #key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .end local v4           #rect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    :goto_42
    return v5

    :cond_43
    const/4 v5, -0x1

    goto :goto_42
.end method

.method private fireEvent(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V
    .registers 6
    .parameter "key"
    .parameter "longPressed"

    .prologue
    .line 424
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mListener:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;

    if-nez v0, :cond_7

    .line 432
    :cond_6
    :goto_6
    return-void

    .line 427
    :cond_7
    if-eqz p2, :cond_17

    .line 428
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mListener:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;

    iget-object v1, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->longPressKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget v1, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->code:I

    iget-object v2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->longPressKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v2, v2, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->data:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;->onLongPress(ILjava/lang/Object;)V

    goto :goto_6

    .line 430
    :cond_17
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mListener:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;

    iget v1, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->code:I

    iget-object v2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->data:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;->onKey(ILjava/lang/Object;)V

    goto :goto_6
.end method

.method private final getSoftKeyLabel(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "label"

    .prologue
    .line 249
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 250
    check-cast p1, Ljava/lang/String;

    .end local p1
    move-object v1, p1

    .line 255
    :goto_7
    return-object v1

    .line 251
    .restart local p1
    :cond_8
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_19

    .line 252
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    .local v0, resId:I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    invoke-virtual {v1, v0}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 255
    .end local v0           #resId:I
    .restart local p1
    :cond_19
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private final getSoftKeyRect(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    .registers 6
    .parameter "rect"

    .prologue
    .line 237
    instance-of v3, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    if-eqz v3, :cond_a

    .line 238
    move-object v0, p1

    check-cast v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    move-object v2, v0

    .end local p1
    .local v2, resRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    :goto_8
    move-object v3, v2

    .line 245
    .end local v2           #resRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    :goto_9
    return-object v3

    .line 239
    .restart local p1
    :cond_a
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_1b

    .line 240
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 241
    .local v1, resId:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    invoke-virtual {v3, v1}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getRect(I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    move-result-object v2

    .line 242
    .restart local v2       #resRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    goto :goto_8

    .line 243
    .end local v1           #resId:I
    .end local v2           #resRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    .restart local p1
    :cond_1b
    const/4 v3, 0x0

    goto :goto_9
.end method

.method private hidePopupHint()V
    .registers 5

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 328
    return-void
.end method

.method private initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 8
    .parameter "resource"

    .prologue
    const/4 v5, 0x0

    .line 126
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    .line 127
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    invoke-virtual {v2, v5}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 129
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 130
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mScreenWidth:I

    .line 131
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mScreenHeight:I

    .line 132
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mScreenHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintMargin:I

    .line 135
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mScreenHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    invoke-virtual {v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mDesiredHeight:I

    .line 137
    return-void
.end method

.method private invalidateKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 435
    if-eqz p1, :cond_12

    .line 436
    iget-object v1, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->rect:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->computeSoftKeyRect(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    .line 437
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 438
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    .line 440
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_12
    return-void
.end method

.method private onSingleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "me"

    .prologue
    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v6, v8, 0x0

    .line 353
    .local v6, touchX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v7, v8, 0x0

    .line 354
    .local v7, touchY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 355
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 357
    .local v1, eventTime:J
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 358
    .local v5, previousKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    invoke-direct {p0, v6, v7}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->findSoftKey(II)I

    move-result v3

    .line 359
    .local v3, idx:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_25

    .line 363
    const/4 v0, 0x1

    .line 368
    :goto_20
    packed-switch v0, :pswitch_data_d2

    .line 420
    :cond_23
    :goto_23
    const/4 v8, 0x1

    return v8

    .line 365
    :cond_25
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v8, v8, v3

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    goto :goto_20

    .line 370
    :pswitch_2c
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getKeySound()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 371
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoundManager:Lcom/google/android/inputmethod/pinyin/SoundManager;

    invoke-virtual {v8}, Lcom/google/android/inputmethod/pinyin/SoundManager;->playKeyDown()V

    .line 373
    :cond_37
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getVibrate()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 374
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mVibrator:Landroid/os/Vibrator;

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mVibratePattern:[J

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 377
    :cond_45
    :pswitch_45
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    if-eq v8, v5, :cond_81

    .line 378
    iput-wide v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mKeyDownTime:J

    .line 379
    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->invalidateKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 380
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget v8, v8, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_5b

    .line 381
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-direct {p0, v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->invalidateKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 383
    :cond_5b
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v8, v8, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupRect:Ljava/lang/Object;

    if-eqz v8, :cond_6a

    .line 384
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->showPopupHint(I)V

    .line 388
    :cond_6a
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget v8, v8, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_81

    .line 389
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v3, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x320

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 394
    :cond_81
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget v8, v8, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_23

    .line 395
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v3, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x320

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_23

    .line 401
    :pswitch_99
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mCurrentKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 403
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->hidePopupHint()V

    .line 409
    if-eqz v5, :cond_23

    .line 410
    invoke-direct {p0, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->invalidateKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 412
    const/4 v4, 0x0

    .line 413
    .local v4, longPressed:Z
    iget-wide v8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mKeyDownTime:J

    sub-long v8, v1, v8

    const-wide/16 v10, 0x320

    cmp-long v8, v8, v10

    if-ltz v8, :cond_ca

    .line 414
    const/4 v4, 0x1

    .line 415
    iget v8, v5, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_cf

    const/4 v8, 0x1

    :goto_c9
    and-int/2addr v4, v8

    .line 417
    :cond_ca
    invoke-direct {p0, v5, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->fireEvent(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V

    goto/16 :goto_23

    .line 415
    :cond_cf
    const/4 v8, 0x0

    goto :goto_c9

    .line 368
    nop

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_99
        :pswitch_45
    .end packed-switch
.end method

.method private preparePopupHint(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 459
    iget v2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupIcon:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    .line 460
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    iget v3, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupIcon:I

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 461
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    invoke-virtual {v2, v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 466
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :goto_13
    iget-object v2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupLabel:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getSoftKeyLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, label:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 468
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    iget v4, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupLabelStyle:I

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->setTextConfig(Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 473
    :goto_2c
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    iget v4, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupBackground:I

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->invalidate()V

    .line 476
    return-void

    .line 463
    .end local v1           #label:Ljava/lang/String;
    :cond_3f
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    invoke-virtual {v2, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    .line 470
    .restart local v1       #label:Ljava/lang/String;
    :cond_45
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    invoke-virtual {v2, v4, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->setTextConfig(Ljava/lang/String;Landroid/graphics/Paint;)V

    goto :goto_2c
.end method

.method private showPopupHint(I)V
    .registers 6
    .parameter "keyIndex"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    return-void
.end method


# virtual methods
.method public getSoftKeys()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    return-object v0
.end method

.method public init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 140
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    .line 141
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;-><init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    .line 142
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    invoke-virtual {v0, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->setClickable(Z)V

    .line 143
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 144
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHintView:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method invokePopupHint(IIII)V
    .registers 10
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 513
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    if-nez v1, :cond_7

    .line 524
    :goto_6
    return-void

    .line 516
    :cond_7
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 517
    .local v0, parentLoc:[I
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->getLocationInWindow([I)V

    .line 518
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_21

    .line 519
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    aget v2, v0, v4

    add-int/2addr v2, p1

    aget v3, v0, v3

    add-int/2addr v3, p2

    invoke-virtual {v1, p0, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_6

    .line 522
    :cond_21
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    aget v2, v0, v4

    add-int/2addr v2, p1

    aget v3, v0, v3

    add-int/2addr v3, p2

    invoke-virtual {v1, v2, v3, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_6
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 211
    .local v0, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->drawBuffer(Landroid/graphics/Rect;)V

    .line 212
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    return-void
.end method

.method public onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mScreenWidth:I

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mDesiredHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->setMeasuredDimension(II)V

    .line 168
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "me"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->onSingleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->doHidePopupHint()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mPopupHint:Landroid/widget/PopupWindow;

    .line 151
    return-void
.end method

.method public setEventListener(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mListener:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;

    .line 223
    return-void
.end method

.method public setSoftKeys([Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V
    .registers 2
    .parameter "softKeys"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 162
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->invalidate()V

    .line 163
    return-void
.end method
