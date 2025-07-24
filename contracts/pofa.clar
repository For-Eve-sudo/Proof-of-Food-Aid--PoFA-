(define-map donations
  { id: uint }
  {
    donor: principal,
    amount: uint,
    region: (string-ascii 10)
  }
)

(define-data-var counter uint u0)

(define-public (record-donation (amount uint) (region (string-ascii 10)))
  (begin
    (let ((id (+ (var-get counter) u1)))
      (map-set donations
        { id: id }
        {
          donor: tx-sender,
          amount: amount,
          region: region
        })
      (var-set counter id)
      (ok id)
    )
  )
)

(define-read-only (get-donation (id uint))
  (map-get? donations { id: id })
)
