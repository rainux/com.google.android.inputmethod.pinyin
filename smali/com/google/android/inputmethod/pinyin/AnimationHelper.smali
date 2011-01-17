.class public Lcom/google/android/inputmethod/pinyin/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# instance fields
.field private mAnimRunnable:Ljava/lang/Runnable;

.field private mAnimation:Landroid/view/animation/AnimationSet;

.field private mHandler:Landroid/os/Handler;

.field private mRepeatCount:I

.field private mStartDelay:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mRepeatCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)Landroid/view/animation/AnimationSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimation:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;ILandroid/os/Handler;Landroid/view/View;III)V
    .registers 10
    .parameter "context"
    .parameter "resource"
    .parameter "handler"
    .parameter "view"
    .parameter "startDelay"
    .parameter "repeatDelay"
    .parameter "repeatCount"

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimation:Landroid/view/animation/AnimationSet;

    .line 38
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object p4, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mView:Landroid/view/View;

    .line 40
    iput p7, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mRepeatCount:I

    .line 41
    iput p5, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mStartDelay:I

    .line 43
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_37

    .line 44
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 45
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 46
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p7}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 47
    iput p7, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mRepeatCount:I

    .line 49
    new-instance v0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper$1;-><init>(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimRunnable:Ljava/lang/Runnable;

    .line 58
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;

    invoke-direct {v1, p0, p6}, Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;-><init>(Lcom/google/android/inputmethod/pinyin/AnimationHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    :cond_37
    return-void
.end method

.method public startAnimating()V
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mRepeatCount:I

    if-lez v0, :cond_14

    .line 74
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mStartDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    :cond_14
    return-void
.end method

.method public stopAnimating()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 80
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-void
.end method
