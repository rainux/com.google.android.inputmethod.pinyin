.class final Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$3;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 295
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$3;->this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$3;->this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$400(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;I)V

    .line 298
    return-void
.end method
