.class public Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;
.super Landroid/os/Handler;
.source "PinyinIME.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/CandidateViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/PinyinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChoiceNotifier"
.end annotation


# instance fields
.field mIme:Lcom/google/android/inputmethod/pinyin/PinyinIME;

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;Lcom/google/android/inputmethod/pinyin/PinyinIME;)V
    .registers 3
    .parameter
    .parameter "ime"

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2019
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->mIme:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    .line 2020
    return-void
.end method


# virtual methods
.method public onClickChoice(I)V
    .registers 4
    .parameter "choiceId"

    .prologue
    .line 2023
    if-ltz p1, :cond_f

    .line 2024
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1100(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2025
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->mIme:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1200(Lcom/google/android/inputmethod/pinyin/PinyinIME;I)V

    .line 2030
    :cond_f
    :goto_f
    return-void

    .line 2027
    :cond_10
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1300(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/dev/IME;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$100(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->getCandidate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->onCandidateTouched(ILjava/lang/String;)V

    goto :goto_f
.end method

.method public onToBottomGesture()V
    .registers 1

    .prologue
    .line 2050
    return-void
.end method

.method public onToLeftGesture()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2033
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 2034
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1500(Lcom/google/android/inputmethod/pinyin/PinyinIME;Z)V

    .line 2036
    :cond_10
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1000(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageForward(ZZ)Z

    .line 2037
    return-void
.end method

.method public onToRightGesture()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2040
    sget-object v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;->STATE_COMPOSING:Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1400(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$ImeState;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 2041
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0, v2}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1500(Lcom/google/android/inputmethod/pinyin/PinyinIME;Z)V

    .line 2043
    :cond_10
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$ChoiceNotifier;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1000(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->pageBackward(ZZ)Z

    .line 2044
    return-void
.end method

.method public onToTopGesture()V
    .registers 1

    .prologue
    .line 2047
    return-void
.end method
