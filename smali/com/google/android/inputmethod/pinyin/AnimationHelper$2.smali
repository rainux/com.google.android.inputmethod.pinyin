.class final Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/AnimationHelper;->init(Landroid/content/Context;ILandroid/os/Handler;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

.field final synthetic val$repeatDelay:I


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/AnimationHelper;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    iput p2, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;->val$repeatDelay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "animation"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->access$000(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)I

    move-result v0

    if-lez v0, :cond_1a

    .line 61
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->access$400(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->access$300(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;->val$repeatDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    :cond_1a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$2;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->access$200(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 65
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 66
    return-void
.end method
