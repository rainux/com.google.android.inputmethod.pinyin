.class public abstract Lcom/google/android/inputmethod/pinyin/IDataService$Stub;
.super Landroid/os/Binder;
.source "IDataService.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/IDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/IDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.inputmethod.pinyin.IDataService"

.field static final TRANSACTION_disableSync:I = 0x5

.field static final TRANSACTION_disableUpdate:I = 0x3

.field static final TRANSACTION_enableSync:I = 0x4

.field static final TRANSACTION_enableUpdate:I = 0x2

.field static final TRANSACTION_isReady:I = 0x1

.field static final TRANSACTION_isSyncActive:I = 0x9

.field static final TRANSACTION_syncCancel:I = 0x7

.field static final TRANSACTION_syncClear:I = 0x8

.field static final TRANSACTION_syncStart:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/inputmethod/pinyin/IDataService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/inputmethod/pinyin/IDataService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/google/android/inputmethod/pinyin/IDataService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/google/android/inputmethod/pinyin/IDataService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "com.google.android.inputmethod.pinyin.IDataService"

    .line 38
    sparse-switch p1, :sswitch_data_9c

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_b
    return v1

    .line 42
    :sswitch_c
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 43
    goto :goto_b

    .line 47
    :sswitch_13
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->isReady()Z

    move-result v0

    .line 49
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v0, :cond_27

    move v1, v2

    :goto_22
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 51
    goto :goto_b

    :cond_27
    move v1, v4

    .line 50
    goto :goto_22

    .line 55
    .end local v0           #_result:Z
    :sswitch_29
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->enableUpdate()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 58
    goto :goto_b

    .line 62
    :sswitch_36
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->disableUpdate()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 65
    goto :goto_b

    .line 69
    :sswitch_43
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->enableSync()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 72
    goto :goto_b

    .line 76
    :sswitch_50
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->disableSync()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 79
    goto :goto_b

    .line 83
    :sswitch_5d
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->syncStart()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 86
    goto :goto_b

    .line 90
    :sswitch_6a
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->syncCancel()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 93
    goto :goto_b

    .line 97
    :sswitch_77
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->syncClear()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 100
    goto :goto_b

    .line 104
    :sswitch_84
    const-string v1, "com.google.android.inputmethod.pinyin.IDataService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;->isSyncActive()Z

    move-result v0

    .line 106
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v0, :cond_99

    move v1, v2

    :goto_93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 108
    goto/16 :goto_b

    :cond_99
    move v1, v4

    .line 107
    goto :goto_93

    .line 38
    nop

    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_36
        0x4 -> :sswitch_43
        0x5 -> :sswitch_50
        0x6 -> :sswitch_5d
        0x7 -> :sswitch_6a
        0x8 -> :sswitch_77
        0x9 -> :sswitch_84
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
