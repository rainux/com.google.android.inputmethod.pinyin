.class final Lcom/google/android/inputmethod/pinyin/dev/CandidateView$1;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/dev/CandidateView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/dev/CandidateView;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/CandidateView;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceChanged(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 3
    .parameter "newResource"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/CandidateView;

    invoke-static {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->access$000(Lcom/google/android/inputmethod/pinyin/dev/CandidateView;Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    .line 47
    return-void
.end method
