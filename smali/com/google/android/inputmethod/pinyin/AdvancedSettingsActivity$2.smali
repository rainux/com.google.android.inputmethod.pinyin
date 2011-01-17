.class final Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$2;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$2;->this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$2;->this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$300(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$2;->this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$200(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    .line 128
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$2;->this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$400(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;I)V

    .line 130
    :cond_28
    return-void
.end method
