.class final Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;
.super Ljava/lang/Object;
.source "SoftKeyboardView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlipBottomHalf"
.end annotation


# instance fields
.field private final mSoftKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;


# direct methods
.method private constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V
    .registers 3
    .parameter
    .parameter "key"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;->mSoftKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 531
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;-><init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;->mSoftKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$1000(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;

    move-result-object v0

    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf$1;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf$1;-><init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$PopupHintView;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 546
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 534
    return-void
.end method
