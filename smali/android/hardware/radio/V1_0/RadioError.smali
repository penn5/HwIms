.class public final Landroid/hardware/radio/V1_0/RadioError;
.super Ljava/lang/Object;
.source "RadioError.java"


# static fields
.field public static final ABORTED:I = 0x41

.field public static final CANCELLED:I = 0x7

.field public static final DEVICE_IN_USE:I = 0x40

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x14

.field public static final DIAL_MODIFIED_TO_SS:I = 0x13

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x12

.field public static final EMPTY_RECORD:I = 0x37

.field public static final ENCODING_ERR:I = 0x39

.field public static final FDN_CHECK_FAILURE:I = 0xe

.field public static final GENERIC_FAILURE:I = 0x2

.field public static final ILLEGAL_SIM_OR_ME:I = 0xf

.field public static final INTERNAL_ERR:I = 0x26

.field public static final INVALID_ARGUMENTS:I = 0x2c

.field public static final INVALID_CALL_ID:I = 0x2f

.field public static final INVALID_MODEM_STATE:I = 0x2e

.field public static final INVALID_RESPONSE:I = 0x42

.field public static final INVALID_SIM_STATE:I = 0x2d

.field public static final INVALID_SMSC_ADDRESS:I = 0x3a

.field public static final INVALID_SMS_FORMAT:I = 0x38

.field public static final INVALID_STATE:I = 0x29

.field public static final LCE_NOT_SUPPORTED:I = 0x24

.field public static final MISSING_RESOURCE:I = 0x10

.field public static final MODEM_ERR:I = 0x28

.field public static final MODE_NOT_SUPPORTED:I = 0xd

.field public static final NETWORK_ERR:I = 0x31

.field public static final NETWORK_NOT_READY:I = 0x3c

.field public static final NETWORK_REJECT:I = 0x35

.field public static final NONE:I = 0x0

.field public static final NOT_PROVISIONED:I = 0x3d

.field public static final NO_MEMORY:I = 0x25

.field public static final NO_NETWORK_FOUND:I = 0x3f

.field public static final NO_RESOURCES:I = 0x2a

.field public static final NO_SMS_TO_ACK:I = 0x30

.field public static final NO_SUBSCRIPTION:I = 0x3e

.field public static final NO_SUCH_ELEMENT:I = 0x11

.field public static final NO_SUCH_ENTRY:I = 0x3b

.field public static final OEM_ERROR_1:I = 0x1f5

.field public static final OEM_ERROR_10:I = 0x1fe

.field public static final OEM_ERROR_11:I = 0x1ff

.field public static final OEM_ERROR_12:I = 0x200

.field public static final OEM_ERROR_13:I = 0x201

.field public static final OEM_ERROR_14:I = 0x202

.field public static final OEM_ERROR_15:I = 0x203

.field public static final OEM_ERROR_16:I = 0x204

.field public static final OEM_ERROR_17:I = 0x205

.field public static final OEM_ERROR_18:I = 0x206

.field public static final OEM_ERROR_19:I = 0x207

.field public static final OEM_ERROR_2:I = 0x1f6

.field public static final OEM_ERROR_20:I = 0x208

.field public static final OEM_ERROR_21:I = 0x209

.field public static final OEM_ERROR_22:I = 0x20a

.field public static final OEM_ERROR_23:I = 0x20b

.field public static final OEM_ERROR_24:I = 0x20c

.field public static final OEM_ERROR_25:I = 0x20d

.field public static final OEM_ERROR_3:I = 0x1f7

.field public static final OEM_ERROR_4:I = 0x1f8

.field public static final OEM_ERROR_5:I = 0x1f9

.field public static final OEM_ERROR_6:I = 0x1fa

.field public static final OEM_ERROR_7:I = 0x1fb

.field public static final OEM_ERROR_8:I = 0x1fc

.field public static final OEM_ERROR_9:I = 0x1fd

.field public static final OPERATION_NOT_ALLOWED:I = 0x36

.field public static final OP_NOT_ALLOWED_BEFORE_REG_TO_NW:I = 0x9

.field public static final OP_NOT_ALLOWED_DURING_VOICE_CALL:I = 0x8

.field public static final PASSWORD_INCORRECT:I = 0x3

.field public static final RADIO_NOT_AVAILABLE:I = 0x1

.field public static final REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final REQUEST_RATE_LIMITED:I = 0x32

.field public static final SIM_ABSENT:I = 0xb

.field public static final SIM_BUSY:I = 0x33

.field public static final SIM_ERR:I = 0x2b

.field public static final SIM_FULL:I = 0x34

.field public static final SIM_PIN2:I = 0x4

.field public static final SIM_PUK2:I = 0x5

.field public static final SMS_SEND_FAIL_RETRY:I = 0xa

.field public static final SS_MODIFIED_TO_DIAL:I = 0x18

.field public static final SS_MODIFIED_TO_SS:I = 0x1b

.field public static final SS_MODIFIED_TO_USSD:I = 0x19

.field public static final SUBSCRIPTION_NOT_AVAILABLE:I = 0xc

.field public static final SUBSCRIPTION_NOT_SUPPORTED:I = 0x1a

.field public static final SYSTEM_ERR:I = 0x27

.field public static final USSD_MODIFIED_TO_DIAL:I = 0x15

.field public static final USSD_MODIFIED_TO_SS:I = 0x16

.field public static final USSD_MODIFIED_TO_USSD:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .prologue
    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 348
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    .line 349
    const-string/jumbo v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const/4 v0, 0x0

    .line 352
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 353
    const-string/jumbo v2, "RADIO_NOT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    or-int/lit8 v0, v0, 0x1

    .line 356
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 357
    const-string/jumbo v2, "GENERIC_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    or-int/lit8 v0, v0, 0x2

    .line 360
    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 361
    const-string/jumbo v2, "PASSWORD_INCORRECT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    or-int/lit8 v0, v0, 0x3

    .line 364
    :cond_3
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 365
    const-string/jumbo v2, "SIM_PIN2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    or-int/lit8 v0, v0, 0x4

    .line 368
    :cond_4
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 369
    const-string/jumbo v2, "SIM_PUK2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    or-int/lit8 v0, v0, 0x5

    .line 372
    :cond_5
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 373
    const-string/jumbo v2, "REQUEST_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    or-int/lit8 v0, v0, 0x6

    .line 376
    :cond_6
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 377
    const-string/jumbo v2, "CANCELLED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    or-int/lit8 v0, v0, 0x7

    .line 380
    :cond_7
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 381
    const-string/jumbo v2, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    or-int/lit8 v0, v0, 0x8

    .line 384
    :cond_8
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 385
    const-string/jumbo v2, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    or-int/lit8 v0, v0, 0x9

    .line 388
    :cond_9
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 389
    const-string/jumbo v2, "SMS_SEND_FAIL_RETRY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    or-int/lit8 v0, v0, 0xa

    .line 392
    :cond_a
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b

    .line 393
    const-string/jumbo v2, "SIM_ABSENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    or-int/lit8 v0, v0, 0xb

    .line 396
    :cond_b
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_c

    .line 397
    const-string/jumbo v2, "SUBSCRIPTION_NOT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    or-int/lit8 v0, v0, 0xc

    .line 400
    :cond_c
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    .line 401
    const-string/jumbo v2, "MODE_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    or-int/lit8 v0, v0, 0xd

    .line 404
    :cond_d
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_e

    .line 405
    const-string/jumbo v2, "FDN_CHECK_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    or-int/lit8 v0, v0, 0xe

    .line 408
    :cond_e
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_f

    .line 409
    const-string/jumbo v2, "ILLEGAL_SIM_OR_ME"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    or-int/lit8 v0, v0, 0xf

    .line 412
    :cond_f
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_10

    .line 413
    const-string/jumbo v2, "MISSING_RESOURCE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    or-int/lit8 v0, v0, 0x10

    .line 416
    :cond_10
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_11

    .line 417
    const-string/jumbo v2, "NO_SUCH_ELEMENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    or-int/lit8 v0, v0, 0x11

    .line 420
    :cond_11
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_12

    .line 421
    const-string/jumbo v2, "DIAL_MODIFIED_TO_USSD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    or-int/lit8 v0, v0, 0x12

    .line 424
    :cond_12
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_13

    .line 425
    const-string/jumbo v2, "DIAL_MODIFIED_TO_SS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    or-int/lit8 v0, v0, 0x13

    .line 428
    :cond_13
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_14

    .line 429
    const-string/jumbo v2, "DIAL_MODIFIED_TO_DIAL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    or-int/lit8 v0, v0, 0x14

    .line 432
    :cond_14
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_15

    .line 433
    const-string/jumbo v2, "USSD_MODIFIED_TO_DIAL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    or-int/lit8 v0, v0, 0x15

    .line 436
    :cond_15
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_16

    .line 437
    const-string/jumbo v2, "USSD_MODIFIED_TO_SS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    or-int/lit8 v0, v0, 0x16

    .line 440
    :cond_16
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_17

    .line 441
    const-string/jumbo v2, "USSD_MODIFIED_TO_USSD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    or-int/lit8 v0, v0, 0x17

    .line 444
    :cond_17
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_18

    .line 445
    const-string/jumbo v2, "SS_MODIFIED_TO_DIAL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    or-int/lit8 v0, v0, 0x18

    .line 448
    :cond_18
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_19

    .line 449
    const-string/jumbo v2, "SS_MODIFIED_TO_USSD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    or-int/lit8 v0, v0, 0x19

    .line 452
    :cond_19
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_1a

    .line 453
    const-string/jumbo v2, "SUBSCRIPTION_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    or-int/lit8 v0, v0, 0x1a

    .line 456
    :cond_1a
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1b

    .line 457
    const-string/jumbo v2, "SS_MODIFIED_TO_SS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    or-int/lit8 v0, v0, 0x1b

    .line 460
    :cond_1b
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1c

    .line 461
    const-string/jumbo v2, "LCE_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    or-int/lit8 v0, v0, 0x24

    .line 464
    :cond_1c
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1d

    .line 465
    const-string/jumbo v2, "NO_MEMORY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    or-int/lit8 v0, v0, 0x25

    .line 468
    :cond_1d
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1e

    .line 469
    const-string/jumbo v2, "INTERNAL_ERR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    or-int/lit8 v0, v0, 0x26

    .line 472
    :cond_1e
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_1f

    .line 473
    const-string/jumbo v2, "SYSTEM_ERR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    or-int/lit8 v0, v0, 0x27

    .line 476
    :cond_1f
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_20

    .line 477
    const-string/jumbo v2, "MODEM_ERR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    or-int/lit8 v0, v0, 0x28

    .line 480
    :cond_20
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_21

    .line 481
    const-string/jumbo v2, "INVALID_STATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    or-int/lit8 v0, v0, 0x29

    .line 484
    :cond_21
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_22

    .line 485
    const-string/jumbo v2, "NO_RESOURCES"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    or-int/lit8 v0, v0, 0x2a

    .line 488
    :cond_22
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_23

    .line 489
    const-string/jumbo v2, "SIM_ERR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    or-int/lit8 v0, v0, 0x2b

    .line 492
    :cond_23
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_24

    .line 493
    const-string/jumbo v2, "INVALID_ARGUMENTS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    or-int/lit8 v0, v0, 0x2c

    .line 496
    :cond_24
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_25

    .line 497
    const-string/jumbo v2, "INVALID_SIM_STATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    or-int/lit8 v0, v0, 0x2d

    .line 500
    :cond_25
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_26

    .line 501
    const-string/jumbo v2, "INVALID_MODEM_STATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    or-int/lit8 v0, v0, 0x2e

    .line 504
    :cond_26
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_27

    .line 505
    const-string/jumbo v2, "INVALID_CALL_ID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    or-int/lit8 v0, v0, 0x2f

    .line 508
    :cond_27
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_28

    .line 509
    const-string/jumbo v2, "NO_SMS_TO_ACK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    or-int/lit8 v0, v0, 0x30

    .line 512
    :cond_28
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_29

    .line 513
    const-string/jumbo v2, "NETWORK_ERR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    or-int/lit8 v0, v0, 0x31

    .line 516
    :cond_29
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2a

    .line 517
    const-string/jumbo v2, "REQUEST_RATE_LIMITED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    or-int/lit8 v0, v0, 0x32

    .line 520
    :cond_2a
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2b

    .line 521
    const-string/jumbo v2, "SIM_BUSY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    or-int/lit8 v0, v0, 0x33

    .line 524
    :cond_2b
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_2c

    .line 525
    const-string/jumbo v2, "SIM_FULL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    or-int/lit8 v0, v0, 0x34

    .line 528
    :cond_2c
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_2d

    .line 529
    const-string/jumbo v2, "NETWORK_REJECT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    or-int/lit8 v0, v0, 0x35

    .line 532
    :cond_2d
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_2e

    .line 533
    const-string/jumbo v2, "OPERATION_NOT_ALLOWED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    or-int/lit8 v0, v0, 0x36

    .line 536
    :cond_2e
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_2f

    .line 537
    const-string/jumbo v2, "EMPTY_RECORD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    or-int/lit8 v0, v0, 0x37

    .line 540
    :cond_2f
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_30

    .line 541
    const-string/jumbo v2, "INVALID_SMS_FORMAT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    or-int/lit8 v0, v0, 0x38

    .line 544
    :cond_30
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_31

    .line 545
    const-string/jumbo v2, "ENCODING_ERR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    or-int/lit8 v0, v0, 0x39

    .line 548
    :cond_31
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_32

    .line 549
    const-string/jumbo v2, "INVALID_SMSC_ADDRESS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    or-int/lit8 v0, v0, 0x3a

    .line 552
    :cond_32
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_33

    .line 553
    const-string/jumbo v2, "NO_SUCH_ENTRY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    or-int/lit8 v0, v0, 0x3b

    .line 556
    :cond_33
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_34

    .line 557
    const-string/jumbo v2, "NETWORK_NOT_READY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    or-int/lit8 v0, v0, 0x3c

    .line 560
    :cond_34
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_35

    .line 561
    const-string/jumbo v2, "NOT_PROVISIONED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    or-int/lit8 v0, v0, 0x3d

    .line 564
    :cond_35
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_36

    .line 565
    const-string/jumbo v2, "NO_SUBSCRIPTION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    or-int/lit8 v0, v0, 0x3e

    .line 568
    :cond_36
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_37

    .line 569
    const-string/jumbo v2, "NO_NETWORK_FOUND"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    or-int/lit8 v0, v0, 0x3f

    .line 572
    :cond_37
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_38

    .line 573
    const-string/jumbo v2, "DEVICE_IN_USE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    or-int/lit8 v0, v0, 0x40

    .line 576
    :cond_38
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_39

    .line 577
    const-string/jumbo v2, "ABORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    or-int/lit8 v0, v0, 0x41

    .line 580
    :cond_39
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_3a

    .line 581
    const-string/jumbo v2, "INVALID_RESPONSE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    or-int/lit8 v0, v0, 0x42

    .line 584
    :cond_3a
    and-int/lit16 v2, p0, 0x1f5

    const/16 v3, 0x1f5

    if-ne v2, v3, :cond_3b

    .line 585
    const-string/jumbo v2, "OEM_ERROR_1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    or-int/lit16 v0, v0, 0x1f5

    .line 588
    :cond_3b
    and-int/lit16 v2, p0, 0x1f6

    const/16 v3, 0x1f6

    if-ne v2, v3, :cond_3c

    .line 589
    const-string/jumbo v2, "OEM_ERROR_2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    or-int/lit16 v0, v0, 0x1f6

    .line 592
    :cond_3c
    and-int/lit16 v2, p0, 0x1f7

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_3d

    .line 593
    const-string/jumbo v2, "OEM_ERROR_3"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    or-int/lit16 v0, v0, 0x1f7

    .line 596
    :cond_3d
    and-int/lit16 v2, p0, 0x1f8

    const/16 v3, 0x1f8

    if-ne v2, v3, :cond_3e

    .line 597
    const-string/jumbo v2, "OEM_ERROR_4"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    or-int/lit16 v0, v0, 0x1f8

    .line 600
    :cond_3e
    and-int/lit16 v2, p0, 0x1f9

    const/16 v3, 0x1f9

    if-ne v2, v3, :cond_3f

    .line 601
    const-string/jumbo v2, "OEM_ERROR_5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    or-int/lit16 v0, v0, 0x1f9

    .line 604
    :cond_3f
    and-int/lit16 v2, p0, 0x1fa

    const/16 v3, 0x1fa

    if-ne v2, v3, :cond_40

    .line 605
    const-string/jumbo v2, "OEM_ERROR_6"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    or-int/lit16 v0, v0, 0x1fa

    .line 608
    :cond_40
    and-int/lit16 v2, p0, 0x1fb

    const/16 v3, 0x1fb

    if-ne v2, v3, :cond_41

    .line 609
    const-string/jumbo v2, "OEM_ERROR_7"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    or-int/lit16 v0, v0, 0x1fb

    .line 612
    :cond_41
    and-int/lit16 v2, p0, 0x1fc

    const/16 v3, 0x1fc

    if-ne v2, v3, :cond_42

    .line 613
    const-string/jumbo v2, "OEM_ERROR_8"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    or-int/lit16 v0, v0, 0x1fc

    .line 616
    :cond_42
    and-int/lit16 v2, p0, 0x1fd

    const/16 v3, 0x1fd

    if-ne v2, v3, :cond_43

    .line 617
    const-string/jumbo v2, "OEM_ERROR_9"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    or-int/lit16 v0, v0, 0x1fd

    .line 620
    :cond_43
    and-int/lit16 v2, p0, 0x1fe

    const/16 v3, 0x1fe

    if-ne v2, v3, :cond_44

    .line 621
    const-string/jumbo v2, "OEM_ERROR_10"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    or-int/lit16 v0, v0, 0x1fe

    .line 624
    :cond_44
    and-int/lit16 v2, p0, 0x1ff

    const/16 v3, 0x1ff

    if-ne v2, v3, :cond_45

    .line 625
    const-string/jumbo v2, "OEM_ERROR_11"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    or-int/lit16 v0, v0, 0x1ff

    .line 628
    :cond_45
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_46

    .line 629
    const-string/jumbo v2, "OEM_ERROR_12"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    or-int/lit16 v0, v0, 0x200

    .line 632
    :cond_46
    and-int/lit16 v2, p0, 0x201

    const/16 v3, 0x201

    if-ne v2, v3, :cond_47

    .line 633
    const-string/jumbo v2, "OEM_ERROR_13"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    or-int/lit16 v0, v0, 0x201

    .line 636
    :cond_47
    and-int/lit16 v2, p0, 0x202

    const/16 v3, 0x202

    if-ne v2, v3, :cond_48

    .line 637
    const-string/jumbo v2, "OEM_ERROR_14"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    or-int/lit16 v0, v0, 0x202

    .line 640
    :cond_48
    and-int/lit16 v2, p0, 0x203

    const/16 v3, 0x203

    if-ne v2, v3, :cond_49

    .line 641
    const-string/jumbo v2, "OEM_ERROR_15"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    or-int/lit16 v0, v0, 0x203

    .line 644
    :cond_49
    and-int/lit16 v2, p0, 0x204

    const/16 v3, 0x204

    if-ne v2, v3, :cond_4a

    .line 645
    const-string/jumbo v2, "OEM_ERROR_16"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    or-int/lit16 v0, v0, 0x204

    .line 648
    :cond_4a
    and-int/lit16 v2, p0, 0x205

    const/16 v3, 0x205

    if-ne v2, v3, :cond_4b

    .line 649
    const-string/jumbo v2, "OEM_ERROR_17"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    or-int/lit16 v0, v0, 0x205

    .line 652
    :cond_4b
    and-int/lit16 v2, p0, 0x206

    const/16 v3, 0x206

    if-ne v2, v3, :cond_4c

    .line 653
    const-string/jumbo v2, "OEM_ERROR_18"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    or-int/lit16 v0, v0, 0x206

    .line 656
    :cond_4c
    and-int/lit16 v2, p0, 0x207

    const/16 v3, 0x207

    if-ne v2, v3, :cond_4d

    .line 657
    const-string/jumbo v2, "OEM_ERROR_19"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    or-int/lit16 v0, v0, 0x207

    .line 660
    :cond_4d
    and-int/lit16 v2, p0, 0x208

    const/16 v3, 0x208

    if-ne v2, v3, :cond_4e

    .line 661
    const-string/jumbo v2, "OEM_ERROR_20"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    or-int/lit16 v0, v0, 0x208

    .line 664
    :cond_4e
    and-int/lit16 v2, p0, 0x209

    const/16 v3, 0x209

    if-ne v2, v3, :cond_4f

    .line 665
    const-string/jumbo v2, "OEM_ERROR_21"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    or-int/lit16 v0, v0, 0x209

    .line 668
    :cond_4f
    and-int/lit16 v2, p0, 0x20a

    const/16 v3, 0x20a

    if-ne v2, v3, :cond_50

    .line 669
    const-string/jumbo v2, "OEM_ERROR_22"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    or-int/lit16 v0, v0, 0x20a

    .line 672
    :cond_50
    and-int/lit16 v2, p0, 0x20b

    const/16 v3, 0x20b

    if-ne v2, v3, :cond_51

    .line 673
    const-string/jumbo v2, "OEM_ERROR_23"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    or-int/lit16 v0, v0, 0x20b

    .line 676
    :cond_51
    and-int/lit16 v2, p0, 0x20c

    const/16 v3, 0x20c

    if-ne v2, v3, :cond_52

    .line 677
    const-string/jumbo v2, "OEM_ERROR_24"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    or-int/lit16 v0, v0, 0x20c

    .line 680
    :cond_52
    and-int/lit16 v2, p0, 0x20d

    const/16 v3, 0x20d

    if-ne v2, v3, :cond_53

    .line 681
    const-string/jumbo v2, "OEM_ERROR_25"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    or-int/lit16 v0, v0, 0x20d

    .line 684
    :cond_53
    if-eq p0, v0, :cond_54

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_54
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 93
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 94
    const-string/jumbo v0, "RADIO_NOT_AVAILABLE"

    return-object v0

    .line 96
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 97
    const-string/jumbo v0, "GENERIC_FAILURE"

    return-object v0

    .line 99
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 100
    const-string/jumbo v0, "PASSWORD_INCORRECT"

    return-object v0

    .line 102
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 103
    const-string/jumbo v0, "SIM_PIN2"

    return-object v0

    .line 105
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 106
    const-string/jumbo v0, "SIM_PUK2"

    return-object v0

    .line 108
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 109
    const-string/jumbo v0, "REQUEST_NOT_SUPPORTED"

    return-object v0

    .line 111
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 112
    const-string/jumbo v0, "CANCELLED"

    return-object v0

    .line 114
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 115
    const-string/jumbo v0, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    return-object v0

    .line 117
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 118
    const-string/jumbo v0, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    return-object v0

    .line 120
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 121
    const-string/jumbo v0, "SMS_SEND_FAIL_RETRY"

    return-object v0

    .line 123
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 124
    const-string/jumbo v0, "SIM_ABSENT"

    return-object v0

    .line 126
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 127
    const-string/jumbo v0, "SUBSCRIPTION_NOT_AVAILABLE"

    return-object v0

    .line 129
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 130
    const-string/jumbo v0, "MODE_NOT_SUPPORTED"

    return-object v0

    .line 132
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 133
    const-string/jumbo v0, "FDN_CHECK_FAILURE"

    return-object v0

    .line 135
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 136
    const-string/jumbo v0, "ILLEGAL_SIM_OR_ME"

    return-object v0

    .line 138
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 139
    const-string/jumbo v0, "MISSING_RESOURCE"

    return-object v0

    .line 141
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 142
    const-string/jumbo v0, "NO_SUCH_ELEMENT"

    return-object v0

    .line 144
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 145
    const-string/jumbo v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 147
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 148
    const-string/jumbo v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 150
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 151
    const-string/jumbo v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 153
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 154
    const-string/jumbo v0, "USSD_MODIFIED_TO_DIAL"

    return-object v0

    .line 156
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 157
    const-string/jumbo v0, "USSD_MODIFIED_TO_SS"

    return-object v0

    .line 159
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 160
    const-string/jumbo v0, "USSD_MODIFIED_TO_USSD"

    return-object v0

    .line 162
    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 163
    const-string/jumbo v0, "SS_MODIFIED_TO_DIAL"

    return-object v0

    .line 165
    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    .line 166
    const-string/jumbo v0, "SS_MODIFIED_TO_USSD"

    return-object v0

    .line 168
    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    .line 169
    const-string/jumbo v0, "SUBSCRIPTION_NOT_SUPPORTED"

    return-object v0

    .line 171
    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    .line 172
    const-string/jumbo v0, "SS_MODIFIED_TO_SS"

    return-object v0

    .line 174
    :cond_1b
    const/16 v0, 0x24

    if-ne p0, v0, :cond_1c

    .line 175
    const-string/jumbo v0, "LCE_NOT_SUPPORTED"

    return-object v0

    .line 177
    :cond_1c
    const/16 v0, 0x25

    if-ne p0, v0, :cond_1d

    .line 178
    const-string/jumbo v0, "NO_MEMORY"

    return-object v0

    .line 180
    :cond_1d
    const/16 v0, 0x26

    if-ne p0, v0, :cond_1e

    .line 181
    const-string/jumbo v0, "INTERNAL_ERR"

    return-object v0

    .line 183
    :cond_1e
    const/16 v0, 0x27

    if-ne p0, v0, :cond_1f

    .line 184
    const-string/jumbo v0, "SYSTEM_ERR"

    return-object v0

    .line 186
    :cond_1f
    const/16 v0, 0x28

    if-ne p0, v0, :cond_20

    .line 187
    const-string/jumbo v0, "MODEM_ERR"

    return-object v0

    .line 189
    :cond_20
    const/16 v0, 0x29

    if-ne p0, v0, :cond_21

    .line 190
    const-string/jumbo v0, "INVALID_STATE"

    return-object v0

    .line 192
    :cond_21
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_22

    .line 193
    const-string/jumbo v0, "NO_RESOURCES"

    return-object v0

    .line 195
    :cond_22
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_23

    .line 196
    const-string/jumbo v0, "SIM_ERR"

    return-object v0

    .line 198
    :cond_23
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_24

    .line 199
    const-string/jumbo v0, "INVALID_ARGUMENTS"

    return-object v0

    .line 201
    :cond_24
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_25

    .line 202
    const-string/jumbo v0, "INVALID_SIM_STATE"

    return-object v0

    .line 204
    :cond_25
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_26

    .line 205
    const-string/jumbo v0, "INVALID_MODEM_STATE"

    return-object v0

    .line 207
    :cond_26
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_27

    .line 208
    const-string/jumbo v0, "INVALID_CALL_ID"

    return-object v0

    .line 210
    :cond_27
    const/16 v0, 0x30

    if-ne p0, v0, :cond_28

    .line 211
    const-string/jumbo v0, "NO_SMS_TO_ACK"

    return-object v0

    .line 213
    :cond_28
    const/16 v0, 0x31

    if-ne p0, v0, :cond_29

    .line 214
    const-string/jumbo v0, "NETWORK_ERR"

    return-object v0

    .line 216
    :cond_29
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2a

    .line 217
    const-string/jumbo v0, "REQUEST_RATE_LIMITED"

    return-object v0

    .line 219
    :cond_2a
    const/16 v0, 0x33

    if-ne p0, v0, :cond_2b

    .line 220
    const-string/jumbo v0, "SIM_BUSY"

    return-object v0

    .line 222
    :cond_2b
    const/16 v0, 0x34

    if-ne p0, v0, :cond_2c

    .line 223
    const-string/jumbo v0, "SIM_FULL"

    return-object v0

    .line 225
    :cond_2c
    const/16 v0, 0x35

    if-ne p0, v0, :cond_2d

    .line 226
    const-string/jumbo v0, "NETWORK_REJECT"

    return-object v0

    .line 228
    :cond_2d
    const/16 v0, 0x36

    if-ne p0, v0, :cond_2e

    .line 229
    const-string/jumbo v0, "OPERATION_NOT_ALLOWED"

    return-object v0

    .line 231
    :cond_2e
    const/16 v0, 0x37

    if-ne p0, v0, :cond_2f

    .line 232
    const-string/jumbo v0, "EMPTY_RECORD"

    return-object v0

    .line 234
    :cond_2f
    const/16 v0, 0x38

    if-ne p0, v0, :cond_30

    .line 235
    const-string/jumbo v0, "INVALID_SMS_FORMAT"

    return-object v0

    .line 237
    :cond_30
    const/16 v0, 0x39

    if-ne p0, v0, :cond_31

    .line 238
    const-string/jumbo v0, "ENCODING_ERR"

    return-object v0

    .line 240
    :cond_31
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_32

    .line 241
    const-string/jumbo v0, "INVALID_SMSC_ADDRESS"

    return-object v0

    .line 243
    :cond_32
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_33

    .line 244
    const-string/jumbo v0, "NO_SUCH_ENTRY"

    return-object v0

    .line 246
    :cond_33
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_34

    .line 247
    const-string/jumbo v0, "NETWORK_NOT_READY"

    return-object v0

    .line 249
    :cond_34
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_35

    .line 250
    const-string/jumbo v0, "NOT_PROVISIONED"

    return-object v0

    .line 252
    :cond_35
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_36

    .line 253
    const-string/jumbo v0, "NO_SUBSCRIPTION"

    return-object v0

    .line 255
    :cond_36
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_37

    .line 256
    const-string/jumbo v0, "NO_NETWORK_FOUND"

    return-object v0

    .line 258
    :cond_37
    const/16 v0, 0x40

    if-ne p0, v0, :cond_38

    .line 259
    const-string/jumbo v0, "DEVICE_IN_USE"

    return-object v0

    .line 261
    :cond_38
    const/16 v0, 0x41

    if-ne p0, v0, :cond_39

    .line 262
    const-string/jumbo v0, "ABORTED"

    return-object v0

    .line 264
    :cond_39
    const/16 v0, 0x42

    if-ne p0, v0, :cond_3a

    .line 265
    const-string/jumbo v0, "INVALID_RESPONSE"

    return-object v0

    .line 267
    :cond_3a
    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_3b

    .line 268
    const-string/jumbo v0, "OEM_ERROR_1"

    return-object v0

    .line 270
    :cond_3b
    const/16 v0, 0x1f6

    if-ne p0, v0, :cond_3c

    .line 271
    const-string/jumbo v0, "OEM_ERROR_2"

    return-object v0

    .line 273
    :cond_3c
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_3d

    .line 274
    const-string/jumbo v0, "OEM_ERROR_3"

    return-object v0

    .line 276
    :cond_3d
    const/16 v0, 0x1f8

    if-ne p0, v0, :cond_3e

    .line 277
    const-string/jumbo v0, "OEM_ERROR_4"

    return-object v0

    .line 279
    :cond_3e
    const/16 v0, 0x1f9

    if-ne p0, v0, :cond_3f

    .line 280
    const-string/jumbo v0, "OEM_ERROR_5"

    return-object v0

    .line 282
    :cond_3f
    const/16 v0, 0x1fa

    if-ne p0, v0, :cond_40

    .line 283
    const-string/jumbo v0, "OEM_ERROR_6"

    return-object v0

    .line 285
    :cond_40
    const/16 v0, 0x1fb

    if-ne p0, v0, :cond_41

    .line 286
    const-string/jumbo v0, "OEM_ERROR_7"

    return-object v0

    .line 288
    :cond_41
    const/16 v0, 0x1fc

    if-ne p0, v0, :cond_42

    .line 289
    const-string/jumbo v0, "OEM_ERROR_8"

    return-object v0

    .line 291
    :cond_42
    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_43

    .line 292
    const-string/jumbo v0, "OEM_ERROR_9"

    return-object v0

    .line 294
    :cond_43
    const/16 v0, 0x1fe

    if-ne p0, v0, :cond_44

    .line 295
    const-string/jumbo v0, "OEM_ERROR_10"

    return-object v0

    .line 297
    :cond_44
    const/16 v0, 0x1ff

    if-ne p0, v0, :cond_45

    .line 298
    const-string/jumbo v0, "OEM_ERROR_11"

    return-object v0

    .line 300
    :cond_45
    const/16 v0, 0x200

    if-ne p0, v0, :cond_46

    .line 301
    const-string/jumbo v0, "OEM_ERROR_12"

    return-object v0

    .line 303
    :cond_46
    const/16 v0, 0x201

    if-ne p0, v0, :cond_47

    .line 304
    const-string/jumbo v0, "OEM_ERROR_13"

    return-object v0

    .line 306
    :cond_47
    const/16 v0, 0x202

    if-ne p0, v0, :cond_48

    .line 307
    const-string/jumbo v0, "OEM_ERROR_14"

    return-object v0

    .line 309
    :cond_48
    const/16 v0, 0x203

    if-ne p0, v0, :cond_49

    .line 310
    const-string/jumbo v0, "OEM_ERROR_15"

    return-object v0

    .line 312
    :cond_49
    const/16 v0, 0x204

    if-ne p0, v0, :cond_4a

    .line 313
    const-string/jumbo v0, "OEM_ERROR_16"

    return-object v0

    .line 315
    :cond_4a
    const/16 v0, 0x205

    if-ne p0, v0, :cond_4b

    .line 316
    const-string/jumbo v0, "OEM_ERROR_17"

    return-object v0

    .line 318
    :cond_4b
    const/16 v0, 0x206

    if-ne p0, v0, :cond_4c

    .line 319
    const-string/jumbo v0, "OEM_ERROR_18"

    return-object v0

    .line 321
    :cond_4c
    const/16 v0, 0x207

    if-ne p0, v0, :cond_4d

    .line 322
    const-string/jumbo v0, "OEM_ERROR_19"

    return-object v0

    .line 324
    :cond_4d
    const/16 v0, 0x208

    if-ne p0, v0, :cond_4e

    .line 325
    const-string/jumbo v0, "OEM_ERROR_20"

    return-object v0

    .line 327
    :cond_4e
    const/16 v0, 0x209

    if-ne p0, v0, :cond_4f

    .line 328
    const-string/jumbo v0, "OEM_ERROR_21"

    return-object v0

    .line 330
    :cond_4f
    const/16 v0, 0x20a

    if-ne p0, v0, :cond_50

    .line 331
    const-string/jumbo v0, "OEM_ERROR_22"

    return-object v0

    .line 333
    :cond_50
    const/16 v0, 0x20b

    if-ne p0, v0, :cond_51

    .line 334
    const-string/jumbo v0, "OEM_ERROR_23"

    return-object v0

    .line 336
    :cond_51
    const/16 v0, 0x20c

    if-ne p0, v0, :cond_52

    .line 337
    const-string/jumbo v0, "OEM_ERROR_24"

    return-object v0

    .line 339
    :cond_52
    const/16 v0, 0x20d

    if-ne p0, v0, :cond_53

    .line 340
    const-string/jumbo v0, "OEM_ERROR_25"

    return-object v0

    .line 342
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
