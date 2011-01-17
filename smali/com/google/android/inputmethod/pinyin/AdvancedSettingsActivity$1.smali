.class final Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;
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
    .line 79
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$1;->this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 81
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 82
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data service binded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_14
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$1;->this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    invoke-static {p2}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/inputmethod/pinyin/IDataService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$102(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;Lcom/google/android/inputmethod/pinyin/IDataService;)Lcom/google/android/inputmethod/pinyin/IDataService;

    .line 84
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 87
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 88
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lost connection to data service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_14
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity$1;->this$0:Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;->access$102(Lcom/google/android/inputmethod/pinyin/AdvancedSettingsActivity;Lcom/google/android/inputmethod/pinyin/IDataService;)Lcom/google/android/inputmethod/pinyin/IDataService;

    .line 90
    return-void
.end method
